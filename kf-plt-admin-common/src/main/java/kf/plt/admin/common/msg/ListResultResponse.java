package kf.plt.admin.common.msg;

import java.util.List;

/**
 *
 */
public class ListResultResponse<T> extends BaseResponse{
    List<T> data;


    public ListResultResponse data(List<T> data) {
        this.setData(data);
        return this;
    }


    /**
     *  获取数据
     * @return 返回一个列表
     */
    public List<T> getData() {
        return data;
    }

    /**
     * 设置列表数据
     * @param data 数据
     */
    public void setData(List<T> data) {
        this.data = data;
    }
}
