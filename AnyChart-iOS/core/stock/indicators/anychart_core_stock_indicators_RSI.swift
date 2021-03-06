
// class
/**
 * 
 */
 extension anychart.core.stock.indicators {
    public class RSI: JsObject {

        //override init() {
        //    super.init()
        //}

        public override init() {
            super.init()
            //return RSI(jsBase: "new anychart.core.stock.indicators.RSI()")
            //super.init(jsBase: "new anychart.core.stock.indicators.RSI()")
        }

        

        public override init(jsBase: String) {
            super.init()

            JsObject.variableIndex += 1
            self.jsBase = "rSI\(JsObject.variableIndex)"
            APIlib.sharedInstance.jsDelegate?.jsAddLine(jsLine: self.jsBase + " = " + jsBase + ";")
        }

        public func instantiate() -> anychart.core.stock.indicators.RSI {
            return anychart.core.stock.indicators.RSI(jsBase: "new anychart.core.stock.indicators.rsi()")
        }

        override public func getJsBase() -> String {
            return jsBase;
        }

        
    /**
     * Getter for the period.
     */
    public func period()  {
        APIlib.sharedInstance.jsDelegate?.jsAddLine(jsLine: self.jsBase + ".period();")
    }
    /**
     * Setter for the period.
     */
    public func period(period: Double) -> anychart.core.stock.indicators.RSI {
        APIlib.sharedInstance.jsDelegate?.jsAddLine(jsLine: "\(self.jsBase).period(\(period));")

        return self
    }
    /**
     * Getter for the indicator RSI series instance.
     */
    public func series() -> anychart.core.stock.series.Base {
        return anychart.core.stock.series.Base(jsBase: self.jsBase + ".series()")
    }
    /**
     * Setter for the indicator RSI series type.
     */
    public func series(type: anychart.enums.StockSeriesType) -> anychart.core.stock.indicators.RSI {
        APIlib.sharedInstance.jsDelegate?.jsAddLine(jsLine: "\(self.jsBase).series(\((type != nil) ? type.getJsBase() : "null"));")

        return self
    }
    /**
     * Setter for the indicator RSI series type.
     */
    public func series(type: String) -> anychart.core.stock.indicators.RSI {
        APIlib.sharedInstance.jsDelegate?.jsAddLine(jsLine: "\(self.jsBase).series(\(JsObject.wrapQuotes(value: type)));")

        return self
    }

    }
}