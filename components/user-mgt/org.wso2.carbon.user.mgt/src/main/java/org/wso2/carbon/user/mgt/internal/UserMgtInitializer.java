/*
 * Copyright (c) 2007 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 *  WSO2 Inc. licenses this file to you under the Apache License,
 *  Version 2.0 (the "License"); you may not use this file except
 *  in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing,
 *  software distributed under the License is distributed on an
 *  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *  KIND, either express or implied.  See the License for the
 *  specific language governing permissions and limitations
 *  under the License.
 */

package org.wso2.carbon.user.mgt.internal;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.osgi.framework.BundleContext;
import org.wso2.carbon.CarbonConstants;
import org.wso2.carbon.context.PrivilegedCarbonContext;
import org.wso2.carbon.registry.core.Collection;
import org.wso2.carbon.registry.core.Resource;
import org.wso2.carbon.registry.core.service.RegistryService;
import org.wso2.carbon.registry.core.session.UserRegistry;
import org.wso2.carbon.user.core.AuthorizationManager;
import org.wso2.carbon.user.core.UserRealm;
import org.wso2.carbon.user.mgt.UserMgtConstants;
import org.wso2.carbon.utils.multitenancy.MultitenantConstants;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/**
 * This class performs initialization logic of the user manager
 */
public class UserMgtInitializer {

    private static final Log log = LogFactory.getLog(UserMgtInitializer.class);

    public void start(BundleContext bc, RegistryService registryService) throws Exception {
        PrivilegedCarbonContext carbonContext = PrivilegedCarbonContext.getThreadLocalCarbonContext();
        carbonContext.setTenantDomain(MultitenantConstants.SUPER_TENANT_DOMAIN_NAME);
        carbonContext.setTenantId(MultitenantConstants.SUPER_TENANT_ID);

        addPermissions(registryService);
    }

    private void addPermissions(RegistryService registryService) throws Exception {

        try {
            UserRegistry registry = registryService.getGovernanceSystemRegistry();
            Map<String, String> map = new HashMap<String, String>();
            map.put(CarbonConstants.UI_PERMISSION_COLLECTION, "全部权限");
            map.put(CarbonConstants.UI_ADMIN_PERMISSION_COLLECTION, "管理权限");
            map.put(UserMgtConstants.UI_PROTECTED_PERMISSION_ROOT, "成绩管理员权限");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "manage", "管理");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "monitor", "监控");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "manage/modify", "配置");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "manage/add", "添加");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "configure", "配置");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "configure/security", "安全");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "configure/security/usermgt", "身份管理");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "configure/security/usermgt/users", "用户管理");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "configure/security/usermgt/passwords",
                    "密码管理");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "configure/security/usermgt/profiles",
                    "个人资料管理");
            map.put(UserMgtConstants.UI_ADMIN_PERMISSION_ROOT + "login", "登录");

            for (Iterator<Map.Entry<String, String>> ite = map.entrySet().iterator(); ite.hasNext(); ) {
                Map.Entry<String, String> entry = ite.next();
                String resourcePath = entry.getKey();
                String displayName = entry.getValue();

                if (registry.resourceExists(resourcePath)) {
                    Resource resource = registry.get(resourcePath);
                    if (resource.getProperty(UserMgtConstants.DISPLAY_NAME) == null) {
                        resource.setProperty(UserMgtConstants.DISPLAY_NAME, displayName);
                        registry.put(resourcePath, resource);
                    }
                    continue;
                }

                Collection resource = registry.newCollection();
                resource.setProperty(UserMgtConstants.DISPLAY_NAME, displayName);
                registry.put(resourcePath, resource);

            }

            // realm is taken from the registry rather than realm service to fix
            // chrooted issues
            UserRealm realm = registry.getUserRealm();
            String adminRole = realm.getRealmConfiguration().getAdminRoleName();
            AuthorizationManager authMan = realm.getAuthorizationManager();
            if (!authMan.isRoleAuthorized(adminRole, CarbonConstants.UI_PERMISSION_COLLECTION,
                    UserMgtConstants.EXECUTE_ACTION)) {
                authMan.authorizeRole(adminRole, CarbonConstants.UI_PERMISSION_COLLECTION,
                        UserMgtConstants.EXECUTE_ACTION);
            }
        } catch (Exception e) {
            log.error("While adding management permission :: " + e.getMessage(), e);
            throw new Exception("当提及昂立权限时发生错误 :: " + e.getMessage(), e);
        }
    }
}
