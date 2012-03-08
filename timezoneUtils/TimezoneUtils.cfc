<cfcomponent extends="Basis.Plugin" output="false">

	<cffunction name="initPlugin" output="false">
		<cfset this.name = "Timezone Utilities" />
		<cfset this.scope = "application" />
		<cfset this.referenceName = "timezoneUtils" />
	</cffunction>

	<cffunction name="convertDateTimeToTimezone" output="false">
		<cfargument name="date" type="date" required="true" />
		<cfargument name="targetTimezone" type="string" required="true" />
		<cfargument name="targetFormat" type="string" required="false" default="MM/dd/yyyy HH:mm:ss" />

		<cfset var utz = createObject("java", "java.util.TimeZone").getTimeZone(arguments.targetTimezone) />
		<cfset var formatter = createObject("java", "java.text.SimpleDateFormat").init(arguments.targetFormat) />

		<cfset formatter.setTimeZone(utz) />
		<cfreturn formatter.format(arguments.date) />
	</cffunction>
	
</cfcomponent>