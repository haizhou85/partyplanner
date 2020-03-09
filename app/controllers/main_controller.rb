class MainController < ApplicationController
    def index
        @supplies = Supply.all
    end

    def party_s
        @supplies = Supply.all.where.not(:amount_s => 0)
        total = 0
        @supplies.each do |s|
            total += s.price * s.amount_s
        end
        @total = total
    end

    def party_m
        @supplies = Supply.all.where.not(:amount_m => 0)
        total = 0
        @supplies.each do |s|
            total += s.price * s.amount_m
        end
        @total = total
    end

    def party_l
        @supplies = Supply.all.where.not(:amount_l => 0)
        total = 0
        @supplies.each do |s|
            total += s.price * s.amount_l
        end
        @total = total

    end

end
