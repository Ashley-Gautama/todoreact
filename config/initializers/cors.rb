class TodoApi::Application
  config.middleware.insert_before 0,  "Rack::Cors", debug: true, logger: (-> { Rails.logger }) do
  allow do
    origins 'localhost:3000', '127.0.0.1:3000'
    end
  end
end
