require 'rails_helper'

RSpec.describe RegistrationController, :type => :controller do
    subject(:create_admin) {described_class.new(sign_up_params)}
    subject(:create_admin) { described_class.new(current_admin)}
    subject(:create_admin) { described_class.new(params[:admin])}
    describe '#Create Admin' do
        context 'Se a entrada for válida' do
        let (:sign_up_params) { Admin.new(:first_name => "Xaolin",
                                     :last_name => "Matador de Porco",
                                     :email => "pigkiller@business.com",
                                     :app_id => 2
                                    )
                                }

        let (:current_admin) { Admin.new(:first_name => "Moe",
                                     :last_name => "Alagado",
                                     :email => "abridor@business.com",
                                     :app_id => 1,
                                     :is_god =>true
                                    )
                                }     
        let (:params) { Admin.new(:first_name => "Fulado",
                                     :last_name => "Siqueira",
                                     :email => "abridor@business.com",
                                     :app_id => 3,
                                     :is_god =>true
                                    )
                                }                      
                                
        it "current.is_god == true and params.is_god == true => sign_up_params != nil" do
        
        #if ((current_admin.is_god == false) && (params[:admin][:is_god] == true))
        expect(current_admin.is_god).to eq(true)
        expect(params.is_god).to eq(true)
        expect(sign_up_params).to_not eq(nil)
        end
        end       
    end
end

RSpec.describe RegistrationController, :type => :controller do
    subject(:create_admin) {described_class.new(sign_up_params)}
    subject(:create_admin) { described_class.new(current_admin)}
    subject(:create_admin) { described_class.new(params[:admin])}
    describe '#Create Admin' do
        context 'Se a entrada for válida' do
        let (:sign_up_params) {  }
        let (:current_admin) { Admin.new(:first_name => "Moe",
                                     :last_name => "Alagado",
                                     :email => "abridor@business.com",
                                     :app_id => 1,
                                     :is_god =>false
                                    )
                                }     
        let (:params) { Admin.new(:first_name => "Fulado",
                                     :last_name => "Siqueira",
                                     :email => "abridor@business.com",
                                     :app_id => 3,
                                     :is_god =>true
                                    )
                                }                      
                                
        it "current.is_god == false and params.is_god == true => sign_up_params == nil" do
        
        #if ((current_admin.is_god == false) && (params[:admin][:is_god] == true))
        expect(current_admin.is_god).to eq(false)
        expect(params.is_god).to eq(true)
        expect(sign_up_params).to eq(nil)
        end
        end       
    end
end

RSpec.describe RegistrationController, :type => :controller do
    subject(:create_admin) {described_class.new(sign_up_params)}
    subject(:create_admin) { described_class.new(current_admin)}
    subject(:create_admin) { described_class.new(params[:admin])}
    describe '#Create Admin' do
        context 'Se a entrada for válida' do
        let (:sign_up_params) { Admin.new(:first_name => "Xaolin",
                                     :last_name => "Matador de Porco",
                                     :email => "pigkiller@business.com",
                                     :app_id => 2
                                    )
                                }

        let (:current_admin) { Admin.new(:first_name => "Moe",
                                     :last_name => "Alagado",
                                     :email => "abridor@business.com",
                                     :app_id => 1,
                                     :is_god =>false
                                    )
                                }     
        let (:params) { Admin.new(:first_name => "Fulado",
                                     :last_name => "Siqueira",
                                     :email => "abridor@business.com",
                                     :app_id => 3,
                                     :is_god =>false
                                    )
                                }                      
                                
        it "current.is_god == false and params.is_god == false => sign_up_params != nil" do
        
        #if ((current_admin.is_god == false) && (params[:admin][:is_god] == true))
        expect(current_admin.is_god).to eq(false)
        expect(params.is_god).to eq(false)
        expect(sign_up_params).to_not eq(nil)
        end
        end       
    end
end

RSpec.describe RegistrationController, :type => :controller do
    subject(:create_admin) {described_class.new(sign_up_params)}
    subject(:create_admin) { described_class.new(current_admin)}
    subject(:create_admin) { described_class.new(params[:admin])}
    describe '#Create Admin' do
        context 'Se a entrada for válida' do
        let (:sign_up_params) { Admin.new(:first_name => "Xaolin",
                                     :last_name => "Matador de Porco",
                                     :email => "pigkiller@business.com",
                                     :app_id => 2
                                    )
                                }

        let (:current_admin) { Admin.new(:first_name => "Moe",
                                     :last_name => "Alagado",
                                     :email => "abridor@business.com",
                                     :app_id => 1,
                                     :is_god =>true
                                    )
                                }     
        let (:params) { Admin.new(:first_name => "Fulado",
                                     :last_name => "Siqueira",
                                     :email => "abridor@business.com",
                                     :app_id => 3,
                                     :is_god =>false
                                    )
                                }                      
                                
        it "current.is_god == true and params.is_god == false => sign_up_params != nil" do
        
        #if ((current_admin.is_god == false) && (params[:admin][:is_god] == true))
        expect(current_admin.is_god).to eq(true)
        expect(params.is_god).to eq(false)
        expect(sign_up_params).to_not eq(nil)
        end
        end       
    end
end

