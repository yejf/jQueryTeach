package com.tz.entity;

import java.util.List;

public class ChartsBean {
    private ChartBean chart;
    private List<DataBean> data;

    public ChartBean getChart() {
        return chart;
    }

    public void setChart(ChartBean chart) {
        this.chart = chart;
    }

    public List<DataBean> getData() {
        return data;
    }

    public void setData(List<DataBean> data) {
        this.data = data;
    }

    public static class ChartBean {
        private String caption;
        private String subCaption;
        private String xAxisName;
        private String yAxisName;
        private String numberPrefix;
        private String theme;

        public String getCaption() {
            return caption;
        }

        public void setCaption(String caption) {
            this.caption = caption;
        }

        public String getSubCaption() {
            return subCaption;
        }

        public void setSubCaption(String subCaption) {
            this.subCaption = subCaption;
        }

        public String getXAxisName() {
            return xAxisName;
        }

        public void setXAxisName(String xAxisName) {
            this.xAxisName = xAxisName;
        }

        public String getYAxisName() {
            return yAxisName;
        }

        public void setYAxisName(String yAxisName) {
            this.yAxisName = yAxisName;
        }

        public String getNumberPrefix() {
            return numberPrefix;
        }

        public void setNumberPrefix(String numberPrefix) {
            this.numberPrefix = numberPrefix;
        }

        public String getTheme() {
            return theme;
        }

        public void setTheme(String theme) {
            this.theme = theme;
        }
    }

    public static class DataBean {
        private String label;
        private String value;

        public String getLabel() {
            return label;
        }

        public void setLabel(String label) {
            this.label = label;
        }

        public String getValue() {
            return value;
        }

        public void setValue(String value) {
            this.value = value;
        }
    }
}
