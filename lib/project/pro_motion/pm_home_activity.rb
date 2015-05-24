# RM-733
#module ProMotion
  class PMHomeActivity < PMSingleFragmentActivity
    def on_create(saved_instance_state)
      super

      mp "PMHomeActivity on_create"

      home_screen_class = PMApplication.current_application.home_screen_class
      set_fragment home_screen_class.new if home_screen_class
    end
  end

#end