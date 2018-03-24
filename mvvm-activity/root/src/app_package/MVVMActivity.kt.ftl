package ${packageName}.view;

import android.arch.lifecycle.ViewModelProviders
import android.os.Bundle
import ${packageName}.viewmodel.${className}ViewModel
 
class ${className}Activity : BaseActivity<${className}ViewModel>() {
 
   override fun createViewModel(): ${className}ViewModel =
              ViewModelProviders.of(this).get(${className}ViewModel::class.java)
    
   override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
   }
 
}
