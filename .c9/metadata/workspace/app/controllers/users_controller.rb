{"filter":false,"title":"users_controller.rb","tooltip":"/app/controllers/users_controller.rb","undoManager":{"mark":42,"position":42,"stack":[[{"start":{"row":12,"column":2},"end":{"row":13,"column":0},"action":"remove","lines":["",""],"id":2,"ignore":true}],[{"start":{"row":10,"column":2},"end":{"row":12,"column":2},"action":"remove","lines":["","","  "],"id":3,"ignore":true}],[{"start":{"row":9,"column":5},"end":{"row":10,"column":2},"action":"remove","lines":["","  "],"id":4,"ignore":true}],[{"start":{"row":8,"column":10},"end":{"row":9,"column":4},"action":"insert","lines":["","    "],"id":5,"ignore":true}],[{"start":{"row":7,"column":0},"end":{"row":10,"column":5},"action":"remove","lines":["  ","  def edit","    ","  end"],"id":6,"ignore":true}],[{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "],"id":7,"ignore":true}],[{"start":{"row":7,"column":2},"end":{"row":7,"column":4},"action":"insert","lines":["de"],"id":8,"ignore":true}],[{"start":{"row":7,"column":4},"end":{"row":7,"column":6},"action":"insert","lines":["f "],"id":9,"ignore":true}],[{"start":{"row":7,"column":6},"end":{"row":7,"column":10},"action":"insert","lines":["upda"],"id":10,"ignore":true}],[{"start":{"row":7,"column":10},"end":{"row":7,"column":12},"action":"insert","lines":["te"],"id":11,"ignore":true}],[{"start":{"row":7,"column":12},"end":{"row":8,"column":4},"action":"insert","lines":["","    "],"id":12,"ignore":true}],[{"start":{"row":8,"column":2},"end":{"row":8,"column":4},"action":"remove","lines":["  "],"id":13,"ignore":true},{"start":{"row":8,"column":2},"end":{"row":8,"column":5},"action":"insert","lines":["end"]}],[{"start":{"row":7,"column":12},"end":{"row":8,"column":4},"action":"insert","lines":["","    "],"id":14,"ignore":true}],[{"start":{"row":8,"column":0},"end":{"row":19,"column":0},"action":"insert","lines":["    if @vet.update(vet_params)","      if params[:images]","        params[:images].each do |image|","          @vet.photos.create(image: image)","        end","      end","      ","      redirect_to edit_vet_path(@vet), notice: \"Updated..\"","    else","      render :edit","    end",""],"id":15,"ignore":true}],[{"start":{"row":18,"column":7},"end":{"row":19,"column":4},"action":"remove","lines":["","    "],"id":16,"ignore":true}],[{"start":{"row":18,"column":7},"end":{"row":19,"column":4},"action":"insert","lines":["","    "],"id":17,"ignore":true}],[{"start":{"row":16,"column":0},"end":{"row":17,"column":18},"action":"remove","lines":["    else","      render :edit"],"id":18,"ignore":true}],[{"start":{"row":15,"column":58},"end":{"row":16,"column":0},"action":"remove","lines":["",""],"id":19,"ignore":true}],[{"start":{"row":13,"column":9},"end":{"row":14,"column":6},"action":"remove","lines":["","      "],"id":20,"ignore":true}],[{"start":{"row":13,"column":8},"end":{"row":13,"column":9},"action":"remove","lines":["d"],"id":21,"ignore":true}],[{"start":{"row":13,"column":8},"end":{"row":13,"column":9},"action":"insert","lines":["d"],"id":22,"ignore":true}],[{"start":{"row":8,"column":8},"end":{"row":8,"column":11},"action":"remove","lines":["vet"],"id":23,"ignore":true}],[{"start":{"row":8,"column":8},"end":{"row":8,"column":12},"action":"insert","lines":["user"],"id":24,"ignore":true}],[{"start":{"row":8,"column":8},"end":{"row":8,"column":12},"action":"remove","lines":["user"],"id":25,"ignore":true}],[{"start":{"row":8,"column":7},"end":{"row":8,"column":8},"action":"remove","lines":["@"],"id":26,"ignore":true}],[{"start":{"row":8,"column":7},"end":{"row":8,"column":12},"action":"insert","lines":["curre"],"id":27,"ignore":true}],[{"start":{"row":8,"column":12},"end":{"row":8,"column":14},"action":"insert","lines":["nt"],"id":28,"ignore":true}],[{"start":{"row":8,"column":7},"end":{"row":8,"column":14},"action":"remove","lines":["current"],"id":29,"ignore":true},{"start":{"row":8,"column":7},"end":{"row":8,"column":19},"action":"insert","lines":["current_user"]}],[{"start":{"row":8,"column":36},"end":{"row":8,"column":38},"action":"remove","lines":["s)"],"id":30,"ignore":true}],[{"start":{"row":8,"column":33},"end":{"row":8,"column":36},"action":"remove","lines":["ram"],"id":31,"ignore":true}],[{"start":{"row":8,"column":27},"end":{"row":8,"column":33},"action":"remove","lines":["vet_pa"],"id":32,"ignore":true}],[{"start":{"row":8,"column":26},"end":{"row":8,"column":27},"action":"remove","lines":["("],"id":33,"ignore":true}],[{"start":{"row":8,"column":6},"end":{"row":8,"column":8},"action":"remove","lines":[" c"],"id":34,"ignore":true}],[{"start":{"row":8,"column":5},"end":{"row":8,"column":6},"action":"remove","lines":["f"],"id":35,"ignore":true}],[{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"remove","lines":["i"],"id":36,"ignore":true}],[{"start":{"row":8,"column":4},"end":{"row":8,"column":5},"action":"insert","lines":["c"],"id":37,"ignore":true}],[{"start":{"row":9,"column":0},"end":{"row":16,"column":4},"action":"remove","lines":["      if params[:images]","        params[:images].each do |image|","          @vet.photos.create(image: image)","        end","      end","      redirect_to edit_vet_path(@vet), notice: \"Updated..\"","    end","    "],"id":38,"ignore":true}],[{"start":{"row":11,"column":2},"end":{"row":12,"column":3},"action":"insert","lines":["","  d"],"id":39,"ignore":true}],[{"start":{"row":12,"column":3},"end":{"row":12,"column":6},"action":"insert","lines":["ef "],"id":40,"ignore":true}],[{"start":{"row":12,"column":6},"end":{"row":12,"column":10},"action":"insert","lines":["edit"],"id":41,"ignore":true}],[{"start":{"row":12,"column":6},"end":{"row":12,"column":10},"action":"remove","lines":["edit"],"id":42,"ignore":true},{"start":{"row":12,"column":6},"end":{"row":12,"column":10},"action":"insert","lines":["edit"]}],[{"start":{"row":12,"column":10},"end":{"row":13,"column":6},"action":"insert","lines":["","    en"],"id":43,"ignore":true}],[{"start":{"row":13,"column":2},"end":{"row":13,"column":4},"action":"remove","lines":["  "],"id":44,"ignore":true},{"start":{"row":13,"column":4},"end":{"row":13,"column":5},"action":"insert","lines":["d"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":7,"column":0},"end":{"row":7,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":213,"mode":"ace/mode/ruby"}},"timestamp":1501940779898,"hash":"ccf2895906c45f962fb6d0a4f596df336adf15e9"}