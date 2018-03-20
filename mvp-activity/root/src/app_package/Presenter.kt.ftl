package ${packageName}.presenter;

import javax.inject.Inject
import ${packageName}.${className}Contract
 
class ${className}Presenter @Inject constructor() : BasePresenter<${className}Contract.View>(), 
                                                    ${className}Contract.Presenter
