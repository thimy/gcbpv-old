# For more information regarding these settings check out our docs https://docs.avohq.io
Avo.configure do |config|
  ## == Routing ==
  config.root_path = '/avo'
  config.app_name = -> { "Retour vers le site" }
  # used only when you have custom `map` configuration in your config.ru
  # config.prefix_path = "/internal"

  # Where should the user be redirected when visting the `/avo` url
  # config.home_path = nil

  ## == Licensing ==
  config.license = 'community' # change this to 'pro' when you add the license key
  # config.license_key = ENV['AVO_LICENSE_KEY']

  ## == Set the context ==
  config.set_context do
    # Return a context object that gets evaluated in Avo::ApplicationController
  end

  ## == Authentication ==
  # config.current_user_method = {}
  # config.authenticate_with do
  # end

  Avo.configure do |config|
    config.current_user_method = :current_user
    config.locale = :fr
  end

  ## == Authorization ==
  # config.authorization_methods = {
  #   index: 'index?',
  #   show: 'show?',
  #   edit: 'edit?',
  #   new: 'new?',
  #   update: 'update?',
  #   create: 'create?',
  #   destroy: 'destroy?',
  #   search: 'search?',
  # }
  # config.raise_error_on_missing_policy = false
  # config.authorization_client = :pundit

  ## == Localization ==
  # config.locale = 'en-US'

  ## == Resource options ==
  # config.resource_controls_placement = :right
  # config.model_resource_mapping = {}
  # config.default_view_type = :table
  # config.per_page = 24
  # config.per_page_steps = [12, 24, 48, 72]
  # config.via_per_page = 8
  # config.id_links_to_resource = false
  # config.cache_resources_on_index_view = true
  ## permanent enable or disable cache_resource_filters, default value is false
  # config.cache_resource_filters = false
  ## provide a lambda to enable or disable cache_resource_filters per user/resource.
  # config.cache_resource_filters = ->(current_user:, resource:) { current_user.cache_resource_filters?}

  ## == Customization ==
  # config.app_name = 'Avocadelicious'
  # config.timezone = 'UTC'
  # config.currency = 'USD'
  # config.hide_layout_when_printing = false
  # config.full_width_container = false
  # config.full_width_index_view = false
  # config.search_debounce = 300
  # config.view_component_path = "app/components"
  # config.display_license_request_timeout_error = true
  # config.disabled_features = []
  # config.tabs_style = :tabs # can be :tabs or :pills
  # config.buttons_on_form_footers = true
  # config.field_wrapper_layout = true

  # == Branding ==
  config.branding = {
    colors: {
      background: "248 246 242",
      100 => "#d0e0f5",
      400 => "#10294a",
      500 => "#205293",
      600 => "#4383d6",
    },
    chart_colors: ["#0B8AE2", "#34C683", "#2AB1EE", "#34C6A8"],
    logo: "/assets/logo.svg",
    logomark: "/assets/chestnut.svg",
    placeholder: "/avo-assets/placeholder.svg",
    favicon: "/assets/favicon.svg"
  }

  ## == Breadcrumbs ==
  # config.display_breadcrumbs = true
  # config.set_initial_breadcrumbs do
  #   add_breadcrumb "Home", '/avo'
  # end

  # == Menus ==
  config.main_menu = -> {
    # section "Dashboards", icon: "dashboards" do
    #   all_dashboards
    # end

    section "Resources", icon: "resources" do
      group "EMT", collapse: true do
        resource :students, label: "Élèves"
        resource :payors, label: "Payeurs"
        resource :subscriptions, label: "Inscriptions"
        resource :teachers, label: "Professeurs"
        resource :instruments, label: "Instruments"
        resource :instrument_classes, label: "Cours"
        resource :sessions, label: "Sessions de cours"
        resource :workshops, label: "Ateliers"
        resource :seasons, label: "Années scolaires"
        resource :plans, label: "Formules"
      end
      group "Publications", collapse: true do
        resource :posts, label: "Articles"
        resource :events, label: "Événements"
        resource :editions, label: "Éditions"
        resource :categories, label: "Catégories"
      end
    end

    # section "Tools", icon: "tools" do
    #   all_tools
    # end
  }
  # config.profile_menu = -> {
  #   link "Profile", path: "/avo/profile", icon: "user-circle"
  # }
end
