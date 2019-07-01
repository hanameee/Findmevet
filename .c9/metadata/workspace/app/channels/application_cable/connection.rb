{"filter":false,"title":"connection.rb","tooltip":"/app/channels/application_cable/connection.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":20,"column":3},"action":"insert","lines":["module ApplicationCable","  class Connection < ActionCable::Connection::Base","    identified_by :current_user","","    def connect","      self.current_user = find_verified_user","      logger.add_tags 'ActionCable', current_user.email","    end","","    protected","","    def find_verified_user # this checks whether a user is authenticated with devise","      if verified_user = env['warden'].user","        verified_user","      else","        reject_unauthorized_connection","      end","    end","","  end","end"],"id":1}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":20,"column":3},"end":{"row":20,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1501915879947,"hash":"ad69f5305d115b6af246660e701b0a8d6969da42"}