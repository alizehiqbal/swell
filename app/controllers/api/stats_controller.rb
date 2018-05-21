class Api::StatsController < ApplicationController

  def index
    start_date = last_sunday - (7 * 3)
    end_date = last_sunday + 7
    # @stats = Workout.includes(:route).where(workout_date: start_date..end_date)
    @stats = Workout.includes(:route).all
    @date_range = @stats.map{ |stat| stat.workout_date }.sort
    @organized_stats = group_workouts_by_date(@stats, @date_range)
  end

  def show
    # week = params[:id].to_i
    # start_date = last_sunday - (7 * week)

    #finds last week stats only
    start_date = last_sunday
    end_date = last_sunday + 7
    @stats = Workout.includes(:route).where(workout_date: start_date..end_date)
    @date_range = (start_date.to_date..end_date.to_date).to_a
    @organized_stats = group_workouts_by_date(@stats, @date_range)
  end

private

  def last_sunday
    today = DateTime.now
    last_sunday = today - today.wday
  end

  def group_workouts_by_date(stats, date_range)
    weekly_stats = Hash.new
    date_range.each do |date|
      weekly_stats[date] = []
    end

    stats.each do |stat|
      weekly_stats[stat.workout_date.to_date].push(stat)
    end
    weekly_stats
  end

  def next_sunday
    last_sunday + 7
  end



end
