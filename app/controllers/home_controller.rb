class HomeController < ApplicationController
  def index
    @date_interval =Date.today - 12.months
    @sales = Sale.where('date between ? and ?' , @date_interval, Date.today).group_by_month(:date).order(:date, :asc).sum(:price)
    @salescount = Sale.where('date between ? and ?' , @date_interval, Date.today).group_by_month(:date).order(:date, :asc).count()
    @salesavg = Sale.where('date between ? and ?' , @date_interval, Date.today).group_by_month(:date).order(:date, :asc).average(:price)
     
    @salespieorigin1 =  Sale.where('date between ? and ?' , @date_interval, Date.today).group(:origin).count()
    @date_interval =Date.today - 6.months
    @salespieorigin2 = Sale.where('date between ? and ?' , @date_interval, Date.today).group(:origin).count()
    @date_interval =Date.today - 3.months
    @salespieorigin3 = Sale.where('date between ? and ?' , @date_interval, Date.today).group(:origin).count()
    @date_interval =Date.today - 1.months
    @salespieorigin4 = Sale.where('date between ? and ?' , @date_interval, Date.today).group(:origin).count()

    @salespiename1 =  Sale.where('date between ? and ?' , @date_interval, Date.today).group(:blend).count()
    @date_interval =Date.today - 6.months
    @salespiename2 = Sale.where('date between ? and ?' , @date_interval, Date.today).group(:blend).count()
    @date_interval =Date.today - 3.months
    @salespiename3 = Sale.where('date between ? and ?' , @date_interval, Date.today).group(:blend).count()
    @date_interval =Date.today - 1.months
    @salespiename4 = Sale.where('date between ? and ?' , @date_interval, Date.today).group(:blend).count()
  end
end
