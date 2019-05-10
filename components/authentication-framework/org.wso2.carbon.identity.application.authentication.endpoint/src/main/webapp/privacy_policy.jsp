<%--
  ~ Copyright (c) 2018, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
  ~
  ~ WSO2 Inc. licenses this file to you under the Apache License,
  ~ Version 2.0 (the "License"); you may not use this file except
  ~ in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~ http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing,
  ~ software distributed under the License is distributed on an
  ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  ~ KIND, either express or implied.  See the License for the
  ~ specific language governing permissions and limitations
  ~ under the License.
  --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="localize.jsp" %>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%=AuthenticationEndpointUtil.i18n(resourceBundle, "wso2.identity.server")%></title>

    <link rel="icon" href="images/favicon.png" type="image/x-icon"/>
    <link href="libs/bootstrap_3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/Roboto.css" rel="stylesheet">
    <link href="css/custom-common.css" rel="stylesheet">


    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<!-- header -->
<header class="header header-default">
    <div class="container-fluid"><br></div>
    <div class="container-fluid">
        <div class="pull-left brand float-remove-xs text-center-xs">
            <a href="#">
                <img src="images/logo-inverse.svg" alt="gds" title="gds" class="logo">
                <h1><em><%=AuthenticationEndpointUtil.i18n(resourceBundle, "identity.server")%>
                </em></h1>
            </a>
        </div>
    </div>
</header>

<!-- page content -->
<div class="row">
    <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 col-sm-offset-1 col-md-offset-1 col-lg-offset-1">
        <div id="toc"></div>
    </div>
    <div class="col-xs-12 col-sm-7 col-md-7 col-lg-7">
        <!-- content -->
        <div class="container col-xs-12 col-sm-12 col-md-12 col-lg-12 col-centered wr-content wr-login col-centered padding-bottom-100">
            <div>
                <h2 class="wr-title uppercase blue-bg padding-double white boarder-bottom-blue margin-none">
                    <%=AuthenticationEndpointUtil.i18n(resourceBundle, "wso2.identity.server")%> - <%=AuthenticationEndpointUtil.i18n(resourceBundle, "privacy.policy.general")%>
                </h2>
            </div>
            <div class="boarder-all ">
                <div class="clearfix"></div>
                <%-- Customizable content. Due to this nature, i18n is not implemented for this section --%>
                <div id="privacyPolicy" class="padding-double">
                    <h4><a href="#"><strong>关于身份服务器</strong></a></h4>
                    <p>身份服务器是基于开放标准和规范的身份管理和授权服务器.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="privacy-policy"><strong>隐私政策</strong></h2>
                    <p>本政策描述了身份服务器如何捕获您的个人信息，收集目的以及有关保留您个人信息的信息.</p>
                    <p>请注意，此政策仅供参考，适用于作为产品的软件。 产品提供者及其开发人员无法访问身份服务器中保存的信息。 有关更多信息，请参阅免责声明部分</p>
                    <p>控制身份服务器使用和管理的实体，组织或个人应制定自己的隐私政策，规定各实体，组织或个人控制或处理数据的方式.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="what-is-personal-information">说明是个人信息?</h2>
                    <p>身份服务器会考虑与您相关的任何内容，并将您识别为您的个人信息。 这包括但不限于:</p>
                    <ul>
                        <li>您的用户名</li>
                        <li>您的出生日期/年龄</li>
                        <li>用于登录的IP地址</li>
                        <li>如果您使用设备（例如，手机或平板电脑）登录，则为您的设备ID</li>
                    </ul>
                    <p>但是，身份服务器还收集以下不被视为个人信息的信息，但仅用于统计目的。 原因是此信息不能用于跟踪您.</p>
                    <ul>
                        <li>发起TCP/IP连接的城市、国家、地区</li>
                        <li>您登录的时间（年，月，周，小时或分钟）</li>
                        <li>您用于登录的设备类型（例如，手机或平板电脑）</li>
                        <li>操作系统和通用浏览器信息</li>
                    </ul>
                    <div class="margin-bottom-double"></div>
                    <h2 id="collection-of-personal-information">个人信息收集</h2>
                    <p>身份服务器仅收集您的信息以满足您的访问要求。例如:
                    <ul>
                        <li>用您的IP地址检测您帐户的任何可疑登录尝试.</li>
                        <li>使用诸如您的名字，姓氏等属性来提供丰富且个性化的用户体验.</li>
                        <li>使用您的安全问题和答案只用来允许帐户恢复.</li>
                    </ul>
                    <div class="margin-bottom"></div>
                    <h3 id="tracking-technologies">跟踪技术</h3>
                    <p>身份服务器采用以下技术跟踪个人信息:</p>
                    <ul>
                        <li>从您输入个人数据的用户个人资料页面收集信息.</li>
                        <li>使用HTTP请求，HTTP标头和TCP/IP跟踪您的IP地址.</li>
                        <li>使用IP地址跟踪您的地理信息和所在位置.</li>
                        <li>使用浏览器Cookie跟踪您的登录历史记录. 有关更多信息，请参阅我们的 <a href="cookie_policy.do">cookie政策</a> .</li>
                    </ul>
                    <div class="margin-bottom-double"></div>
                    <h2 id="user-of-personal-information">使用个人信息</h2>
                    <p>身份服务器仅将您的个人信息用于其收集目的（或用于与该目的一致的用途）.</p>
                    <p>身份服务器仅将您的个人信息用于以下目的.</p>
                    <ul>
                        <li>为您提供个性化的用户体验。 为此，身份服务器使用您的姓名和上传的个人资料照片.</li>
                        <li>保护您的帐户免遭未经授权的访问或潜在的黑客攻击。 为此，身份服务器使用HTTP或TCP/IP标头.</li>
                        <ul>
                            <li>这包括:</li>
                            <ul>
                                <li>IP 地址</li>
                                <li>浏览器指纹</li>
                                <li>Cookies</li>
                            </ul>
                        </ul>
                        <li>导出统计数据以用于系统性能改进的分析目的。 身份服务器在统计计算后不会保留任何个人信息。 因此，统计报告无法识别个人.</li>
                        <ul>
                            <li>身份服务器可能使用:</li>
                            <ul>
                                <li>用于获取地理信息的IP地址</li>
                                <li>浏览器指纹识别以确定浏览器技术和版本</li>
                            </ul>
                        </ul>
                    </ul>
                    <div class="margin-bottom-double"></div>
                    <h2 id="disclosure-of-personal-information">披露个人信息</h2>
                    <p>身份服务器仅向在身份服务器注册的相关应用程序（也称为芒聍聍服务提供商芒聙discloses）公开个人信息。 这些应用程序由您的实体或组织的身份管理员注册。 个人信息仅出于收集目的（或用于与此目的一致的用途）披露，由此类服务提供商控制，除非您已经另行同意或法律要求.</p>
                    <div class="margin-bottom"></div>
                    <h3 id="legal-process">司法程序</h3>
                    <p>请注意，运营身份服务器的组织，实体或个人可能会被迫在法律要求的情况下，经过适当和合法的流程，在您同意或未经您同意的情况下披露您的个人信息.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="storage-of-personal-information">存储个人信息</h2>
                    <div class="margin-bottom"></div>
                    <h3 id="where-your-personal-information-stored">存储您的个人信息的地方</h3>
                    <p>身份服务器将您的个人信息存储在安全数据库中。 身份服务器采用适当的行业认可的安全措施来保护您的个人信息所在的数据库. </p>
                    <p>身份服务器可能使用加密技术来保护您的个人数据的安全性.</p>
                    <div class="margin-bottom"></div>
                    <h3 id="how-long-does-is-5.5-keep-your-personal-information">您的个人信息保留多长时间</h3>
                    <p>只要您是我们系统的活跃用户，身份服务器就会保留您的个人数据。 您可以使用指定的自助用户门户随时更新您的个人数据.</p>
                    <p>身份服务器可以保留散列密码，为您提供更高级别的安全性。 这包括:</p>
                    <ul>
                            <li>当前密码</li>
                            <li>曾经用过的密码</li>
                    </ul>
                    <div class="margin-bottom"></div>
                    <h3 id="how-to-request-removal-of-your-personal-information">如何申请删除您的个人信息</h3>
                    <p>您可以请求管理员删除您的帐户。 管理员是您在其下注册的租户的管理员，如果您不使用租户功能，则是超级管理员.</p>
                    <p>此外，您可以请求匿名化身份服务器可能在日志，数据库或分析存储中保留的所有活动痕迹.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="more-information">更多信息</h2>
                    <div class="margin-bottom"></div>
                    <h3 id="changes-to-this-policy">对此政策的更改</h3>
                    <p>身份服务器的升级版本可能包含对此策略的更改，并且此策略的修订将打包在此类升级中。 此类更改仅适用于选择使用升级版本的用户.</p>
                    <p>运行身份服务器的组织可能会不时修订隐私政策。 您可以使用运行身份服务器的组织提供的相应链接找到最新的管理策略。 组织将通过我们的公共渠道通知隐私政策的任何变更.</p>
                    <div class="margin-bottom"></div>
                    <h3 id="your-choices">你的选择</h3>
                    <p>如果您已在身份服务器中拥有用户帐户，则如果您发现本隐私政策对您不可接受，则您有权停用您的帐户.</p>
                    <p>如果您没有帐户且您不同意我们的隐私政策，您可以选择不创建帐户.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="disclaimer">放弃或拒绝</h2>
                    <ol>
                      <li>产品提供者的员工，合作伙伴和关联公司无权访问，也不需要，存储，处理或控制任何数据，包括身份服务器中包含的个人数据。 所有数据，包括个人数据，均由运行身份服务器的实体或个人控制和处理。 产品提供者及其员工合作伙伴和附属公司不是任何数据隐私法规意义上的数据处理者或数据控制者。
                    对于此类实体或个人使用身份服务器的合法性或方式和目的，产品提供者不提供任何保证或承担任何责任或义务. </li>
                      </br>
                      <li>本隐私政策仅供运行身份服务器的实体或个人参考，并列出了身份服务器中有关个人数据保护的流程和功能。 运行身份服务器的实体和个人有责任创建和管理自己的管理用户数据的规则和流程，此类规则和流程可能会更改此处包含的使用，存储和披露政策。
                    因此，用户应咨询运营身份服务器的实体或其自身隐私政策的人员，以了解管理用户的详细信息。聙聂个人数据. </li>
                    </ol>
                </div>
                <%-- /Costomizable content --%>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- /content -->
    </div>
</div>

<!-- footer -->
<footer class="footer">
    <div class="container-fluid">
        <p><%=AuthenticationEndpointUtil.i18n(resourceBundle, "wso2.identity.server")%> | &copy;
            <script>document.write(new Date().getFullYear());</script>
            <a href="#" target="_blank"><i class="icon fw fw-wso2"></i>
                <%=AuthenticationEndpointUtil.i18n(resourceBundle, "inc")%>
            </a>. <%=AuthenticationEndpointUtil.i18n(resourceBundle, "all.rights.reserved")%>
        </p>
    </div>
</footer>

<script src="libs/jquery_1.11.3/jquery-1.11.3.js"></script>
<script src="libs/bootstrap_3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript" src="js/u2f-api.js"></script>
<script type="text/javascript">
    var ToC = "<nav role='navigation' class='table-of-contents'>" + "<h4>On this page:</h4>" + "<ul>";
    var newLine, el, title, link;

    $("#privacyPolicy h2,#privacyPolicy h3").each(function() {
        el = $(this);
        title = el.text();
        link = "#" + el.attr("id");
        if(el.is("h3")){
            newLine = "<li class='sub'>" + "<a href='" + link + "'>" + title + "</a>" + "</li>";
        }else{
            newLine = "<li >" + "<a href='" + link + "'>" + title + "</a>" + "</li>";
        }

        ToC += newLine;
    });

    ToC += "</ul>" + "</nav>";

    $("#toc").append(ToC);
</script>

</body>
</html>
