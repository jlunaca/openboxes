
<%@ page import="org.pih.warehouse.core.Localization" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="custom" />
        <g:set var="entityName" value="${warehouse.message(code: 'localization.label', default: 'Localization')}" />
        <title><warehouse:message code="default.create.label" args="[entityName]" /></title>
        <!-- Specify content to overload like global navigation links, page titles, etc. -->
		<content tag="pageTitle"><warehouse:message code="default.create.label" args="[entityName]" /></content>
    </head>
    <body>
        <div class="body">

			<g:if test="${flash.message}">
				<div class="message">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${localizationInstance}">
				<div class="errors">
					<g:renderErrors bean="${localizationInstance}" as="list" />
				</div>
			</g:hasErrors>

			<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="list" action="index"><warehouse:message code="default.list.label" args="[entityName]"/></g:link></li>
					<li><g:link class="create" action="create"><g:message code="default.create.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>

			<div class="dialog">


				<g:form action="save" method="post" >
					<div class="box">
						<h2><warehouse:message code="default.create.label" args="[entityName]" /></h2>

						<table>
							<tbody>

								<tr class="prop">
									<td valign="top" class="name">
										<label for="code"><warehouse:message code="localization.code.label" default="Code" /></label>
									</td>
									<td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'code', 'errors')}">
										<g:textField name="code" value="${localizationInstance?.code}" class="text"/>
									</td>
								</tr>



							<tr class="prop">
									<td valign="top" class="name">
										<label for="locale"><warehouse:message code="localization.locale.label" default="Locale" /></label>
									</td>
									<td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'locale', 'errors')}">
										<g:select name="locale" from="${ grailsApplication.config.openboxes.locale.supportedLocales.collect{ new Locale(it) } }"
												  optionValue="displayName" value="${localizationInstance?.locale}" noSelection="['':'']" class="chzn-select-deselect"/>


									</td>
								</tr>

								<tr class="prop">
									<td valign="top" class="name">
										<label for="text"><warehouse:message code="localization.text.label" default="Text" /></label>
									</td>
									<td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'text', 'errors')}">
										<g:textField name="text" value="${localizationInstance?.text}" class="text" />
									</td>
								</tr>

								<tr class="prop">
									<td valign="top" class="name">
										<label for="dateCreated"><warehouse:message code="localization.dateCreated.label" default="Date Created" /></label>
									</td>
									<td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'dateCreated', 'errors')}">
										<g:datePicker name="dateCreated" precision="minute" value="${localizationInstance?.dateCreated}"  />
									</td>
								</tr>

								<tr class="prop">
									<td valign="top" class="name">
										<label for="lastUpdated"><warehouse:message code="localization.lastUpdated.label" default="Last Updated" /></label>
									</td>
									<td valign="top" class="value ${hasErrors(bean: localizationInstance, field: 'lastUpdated', 'errors')}">
										<g:datePicker name="lastUpdated" precision="minute" value="${localizationInstance?.lastUpdated}"  />
									</td>
								</tr>


								<tr class="prop">
									<td valign="top"></td>
									<td valign="top">
									   <g:submitButton name="create" class="button" value="${warehouse.message(code: 'default.button.create.label', default: 'Create')}" />

									   <g:link action="list" class="button">${warehouse.message(code: 'default.button.cancel.label', default: 'Cancel')}</g:link>

									</td>
								</tr>

							</tbody>
						</table>
					</div>
				</g:form>
			</div>
        </div>
    </body>
</html>
