module Cmsable
  class CmsableController < ApplicationController
    def update
      model = params[:model].constantize

      record = model.find(params[:id])
      body = params.require(:content).permit(:body)[:body]
      attribute = model.cmsable_body

      render text: record.update(attribute => body)
    end
  end
end
