package ${packageName}.view;

import android.os.Bundle
import ${packageName}.${className}Contract
import ${packageName}.presenter.${className}Presenter
 
class ${className}Activity : BaseActivity<${className}Contract.Presenter, ${className}Contract.View>(),
          ${className}Contract.View {
 
   override fun createPresenter(): ${className}Contract.Presenter = ${className}Presenter()
    
   override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
   }
 
}
