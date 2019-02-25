package kf.ats.plt.base.entity;

import java.io.Serializable;

import kf.ats.plt.base.ProjectInfo;
import kf.ats.plt.base.addon.Addon;


/**
 * 基础对象
 * @author Daniel.liu(刘丹)
 *
 */
@Addon(name = "基础对象", category=ProjectInfo.Category_Plt_Base, description="所有插件的基类")
public class BaseObject implements Serializable{
    /**
     * 序列号
     */
    private static final long serialVersionUID = -1691551050110405142L;
    /**
     * 属性修改后的操作
     */
    //@XmlTransient
    //public IPropertyChanged onPropertyChanged;
    /**
     * 发出属性变化事件
     * @param propertyName
     *
     */
    protected void firePropertyChangedEvent(String propertyName) {
        /* 如果正在进行反序列化，不抛出事件 */
//		if(XmlContext.isSetPropertyByJaxb()) {
//			if(onPropertyChanged != null) {
//				onPropertyChanged.propertyChanged(propertyName);
//			}
//		}
    }
    /**
     * 获取自己
     * @return 当前对象的指针
     */
//    public BaseObject getSelf() 	{
//        return this;
//    }

    /**
     * 获取显示字符串
     * @return 显示字符串
     */
    public String getDisplayString() {
        return toString();
    }

    /**
     * 获取哈希值，如果设定了Key，则默认将Key的哈希值作为对象的哈希值
     */
    @Override
    public int hashCode() {
        Object key = key();
        assert(key != null);
        if (key == this)
        {
            return super.hashCode();
        }
        else
        {
            return key.hashCode();
        }
    }

    /**
     * 键
     * @return 对象的唯一键
     */
    public Object key() {
        return this;
    }

    /**
     * 判断两个对象是否相等，如果有设定键值，则用键值来进行判断，否则将会使用System.Object的默认判定方法
     */
    @Override
    public boolean equals(Object obj) {
        Object key = key();
        assert(key != null);

        if (obj == null)
            return false;

        if (key == this)
        {
            return super.equals(obj);
        }

        if (!(obj instanceof BaseObject))
        {
            return false;
        }

        return key.equals(((BaseObject)obj).key());
    }

    /**
     * 类型转换
     * @param type 类型
     * @return 转换后的类型
     */
    @SuppressWarnings("unchecked")
    public <T> T toType(Class<? extends T> type) {
        return (T)this;
    }

    /**
     * 获取属性值
     * @param property 属性
     * @param type 类型
     * @return 类型转换后的属性值
     *
     */
    protected <T> T getPropertyValue(BaseObject property, Class<? extends T> type) {
        if(property == null)
            return null;
        return property.toType(type);
    }

    /**
     * 类型转换
     * @param type 类型
     * @return 转换后的类型
     */
    @SuppressWarnings("unchecked")
    public static <T> T toType(Object object, Class<? extends T> type) {
        if(object instanceof BaseObject)
            return ((BaseObject)object).toType(type);

        return (T)object;
    }
}
