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
                    <%=AuthenticationEndpointUtil.i18n(resourceBundle, "wso2.identity.server")%> - <%=AuthenticationEndpointUtil.i18n(resourceBundle, "privacy.policy.cookies")%>
                </h2>
            </div>
            <div class="boarder-all ">
                <div class="clearfix"></div>
                <%-- Customizable content. Due to this nature, i18n is not implemented for this section --%>
                <div id="cookiePolicy" class="padding-double">
                    <h4><a href="#"><strong>关于身份服务器</strong></a></h4>
                    <p>身份服务器是基于开放标准和规范的身份管理和授权服务器.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="cookie-policy"><strong>Cookie 政策</strong></h2>
                    <p>身份服务器使用了cookie，以便它可以为您提供最佳用户体验，并为安全目的识别您。如果禁用cookie，某些服务（很可能）将无法访问. </p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="how-wso2-is-5.5.0-processes-cookies">身份服务器是如何处理cookies的?</h2>
                    <p>身份服务器使用cookie在您的浏览器上存储和检索信息。 此信息用于提供更好的体验。 某些cookie的主要用途是允许用户登录系统，维护会话以及跟踪您在登录会话中执行的活动.</p>
                    <p>身份服务器使用的某些cookie的主要目的是个人身份信息识别，因为这是身份服务器的主要功能。 但是，一旦您的会话结束，即在您注销后，或在会话到期时间结束后，cookie生命周期结束.</p>
                    <p>一些cookie仅用于为您提供更个性化的Web体验，这些cookie不能用于识别您或您的活动.</p>

                    <div class="margin-bottom-double"></div>
                    <h2 id="what-is-a-cookie">什么是cookie?</h2>
                    <p>浏览器Cookie是存储在您设备上的一小段数据，用于帮助网站和移动应用记住您的相关信息。 其他技术（包括Web存储和与您的设备关联的标识符）可用于类似目的。 在本政策中，我们使用术语“cookies”来讨论所有这些技术.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="what-does-wso2-is-5.5.0-use-cookies-for">身份服务器使用cookies来做什么?</h2>
                    <p>身份服务器使用cookie的两个主要用途.</p>
                    <ol>
                        <li>识别您并提供安全性（因为这是身份服务器的主要功能）.</li>
                        <li>提供令人满意的用户体验.</li>
                    </ol>
                    <div class="margin-bottom"></div>
                    <p>身份服务器将cookie用于以下目的.</p>
                    <h3>保存个人偏好</h3>
                    <p>使用这些cookie记住您的设置和偏好，并自动填写表单字段以使您与网站的互动更容易. </p>
                    <p>这些cookie不能用于识别您的个人身份.</p>
                    <h3>提升安全</h3>
              <ul>
                    <li>身份服务器使用选定的cookie来识别和防止安全风险。 例如，它可能会使用这些cookie来存储您的会话信息，以防止其他人在没有您的用户名和密码的情况下更改您的密码.</li>
                </br><li>使用会话cookie来保持您的活动会话.</li>
                  </br>   <li>在执行多因素身份验证和联合身份验证时，它可能会使用临时cookie.</li>
              </br>   <li>身份服务器可能使用永久性cookie来检测您之前使用过同一设备登录。这是为了计算与您当前登录尝试相关的“风险级别”。 这主要是为了保护您和您的帐户免受可能的攻击.</li>
              </ul>
                    <h3>提升性能</h3>
                    <p>可能使用cookie来允许“记住我”功能。.</p>
                    <div class="margin-bottom"></div>
                    <h3 id="analytics">分析</h3>
                    <p>身份服务器作为产品不使用cookie进行分析.</p>
                    <div class="margin-bottom"></div>
                    <h3 id="third-party-cookies">第三方cookies</h3>
                    <p>使用身份服务器可能会导致在浏览器中设置某些第三方cookie。 身份服务器无法控制它们的运行方式。 可能设置的第三方cookie包括:</p>
                    <ul>
                        <ul>
                            <li>任何社交登录网站。 例如，当身份服务器配置为使用“社交”或“联合”登录时，您可以设置第三方cookie，并选择使用“社交帐户”登录;</li>
                            <li>任何第三方联合登录.</li>
                        </ul>
                    </ul>
                    <p>强烈建议您仔细参考这些网站的相应cookie政策，因为身份服务器本身对这些cookie不了解或不使用.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="what-type-of-cookies-does-5.5.0-use">身份服务器使用哪种类型的cookies?</h2>
                    <p>身份服务器使用持久性cookie和会话cookie。 持久cookie有助于身份服务器将您识别为现有用户，以便更容易与身份服务器交互而无需再次登录。 登录后，持久性cookie将保留在浏览器中，当您返回身份服务器时，将由身份服务器来读取.</p>
                    <p>会话cookie是在用户关闭Web浏览器时被删除的cookie。 会话cookie存储在临时内存中，在浏览器关闭后不会保留。 会话cookie不会从用户的计算机收集信息。.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="how-do-i-control-my-cookies">如何控制我的cookies?</h2>
                    <p>大多数浏览器允许您通过其设置首选项控制cookie。 但是，如果您限制网站设置Cookie的给定能力，则可能会恶化您的整体用户体验，因为它将不再为您个性化。 它还可能阻止您保存登录信息等自定义设置.</p>
                    <p>最有可能的是，禁用cookie将使您无法使用身份服务器提供的身份验证和授权功能.</p>
                    <p>如果您对使用cookie有任何问题或疑虑，请联系运行此身份服务器实例的组织的实体或个人（或其数据保护官，如果适用）.</p>
                    <div class="margin-bottom-double"></div>
                    <h2 id="what-are-the-cookies-used">使用了哪些cookies?</h2>
                    <table class="table table-bordered">
                        <tbody>
                        <tr>
                            <td>
                                <p><strong>Cookie 名称</strong></p>
                            </td>
                            <td>
                                <p><strong>用途</strong></p>
                            </td>
                            <td>
                                <p><strong>保留</strong></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>JSESSIONID</p>
                            </td>
                            <td>
                                <p>保留会话数据，以便为您提供良好的用户体验.</p>
                            </td>
                            <td>
                                <p>Session</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>MSGnnnnnnnnnn</p>
                            </td>
                            <td>
                                <p>保留向您显示的一些消息，以便为您提供良好的用户体验.</p>
                                <p>此coookie中的“nnnnnnnnnn”引用表示随机数，例如，MSG324935932.</p>
                            </td>
                            <td>
                                <p>Session</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>requestedURI</p>
                            </td>
                            <td>
                                <p>您正在访问的URI.</p>
                            </td>
                            <td>
                                <p>Session</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p>current-breadcrumb</p>
                            </td>
                            <td>
                                <p>将活动页面保持在会话中以便为您提供良好的用户体验.</p>
                            </td>
                            <td>
                                <p>Session</p>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="margin-bottom-double"></div>
                    <h2 id="disclaimer">放弃或拒绝</h2>
                    <p>此cookie政策仅用于产品本身份服务器的说明性目的。 产品发货时，保单中的内容在技术上是正确的。 运行此身份服务器实例的组织对有效的Cookie策略拥有完全的权限和责任. </p>
                    <p>产品提供者的员工，合作伙伴和关联公司无权访问，也不需要，存储，处理或控制任何数据，包括身份服务器中包含的个人数据。 所有数据，包括个人数据，均由运行身份服务器的实体或个人控制和处理。 产品提供者的员工、合作伙伴和关联公司不是任何数据隐私法规意义上的数据处理者或数据控制者。
                    对于此类实体或个人使用身份服务器的合法性或方式和目的，产品提供者不提供任何保证或承担任何责任或义务. </p>
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

    $("#cookiePolicy h2,#cookiePolicy h3").each(function() {
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
