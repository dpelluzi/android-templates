package ${packageName}

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import io.reactivex.subjects.PublishSubject

class ${className} (private var context: Context,
               private var data: MutableList<${modelClassName}> = mutableListOf()) 
               : RecyclerView.Adapter<${className}.ViewHolder>() {

    val onItemClickSubject: PublishSubject<${modelClassName}> = PublishSubject.create<${modelClassName}>()

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val view = LayoutInflater.from(context).inflate(R.layout.${layoutResId}, parent, false)
        return ViewHolder(view)
    }

    override fun onBindViewHolder(holder: ViewHolder?, position: Int) {
        holder?.bind(data[position])
    }

    override fun getItemCount(): Int = data.size

    inner class ViewHolder(val view: View) : RecyclerView.ViewHolder(view) {

        internal fun bind(model: ${modelClassName}) {
            view.setOnClickListener { onItemClickSubject.onNext(model) }
        }
    }

    fun add(item: ${modelClassName}) {
        this.data.add(item)
        notifyItemChanged(data.indexOf(item))
    }

    fun clear() {
        this.data.clear()
    }
    
}
