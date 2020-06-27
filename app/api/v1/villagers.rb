class Villagers < Grape::API
  version 'v1', using: :path
  
  resource :villagers do
    desc 'Lấy ra những con ciu'
    get do
      @villagers = Villager.all.order(:id)
      present @villagers, with: VillagerFormat
    end

    desc 'Update 1 con ciu.'
    params do
      requires :id, type: String, desc: 'Ciu ID.'
      requires :voted_type, type: String, desc: 'Ciu Type.'
    end
    put ':id' do
      @villager = Villager.find(params[:id])
      if params[:voted_type].eql?('up')
        @villager.increment!(:voted)
      elsif params[:voted_type].eql?('down')
        @villager.decrement!(:voted)
      end
    end
  end

  resource :rankings do
    desc 'Lấy ra Rankings'
    get do
      @villagers = Villager.all.order(voted: :DESC).order(updated_at: :DESC)
      present @villagers, with: VillagerFormat
    end

    desc 'Yêu cầu cập nhật rank'
    put do
      @villagers = Villager.all.order(voted: :DESC).order(updated_at: :DESC)

      @villagers.ssr_rank.update_all(rank: 'SSR')
      @villagers.s_rank.update_all(rank: 'S')
      @villagers.a_rank.update_all(rank: 'A')
      @villagers.b_rank.update_all(rank: 'B')
      @villagers.c_rank.update_all(rank: 'C')
      @villagers.d_rank.update_all(rank: 'D')
      @villagers.f_rank.update_all(rank: 'F')
    end
  end
end
