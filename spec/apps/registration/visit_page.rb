class Registration::VisitPage < Page
    set_url '/bahmni/registration/#/patient/{patient_id}/visit'

    def save_new_patient_visit(visit_info)
        fill_in("Fee", :with => visit_info[:fee])
        fill_in("Weight", :with => visit_info[:weight])
        fill_in("Height", :with => visit_info[:height])
        fill_in("COMMENTS", :with => visit_info[:comments])
        click_on("Save and Print")
        wait_for_overlay_to_be_hidden
    end
end