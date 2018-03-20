<?xml version="1.0"?>
<recipe>
 
    <instantiate from="src/app_package/Contract.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Contract.kt" />
    <instantiate from="src/app_package/MvpViewActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/view/${className}Activity.kt" />
    <instantiate from="src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presenter/${className}Presenter.kt" />
 
    <open file="${srcOut}/${className}Presenter.kt"/>
</recipe>
