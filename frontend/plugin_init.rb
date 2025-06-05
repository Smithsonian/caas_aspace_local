Rails.application.config.after_initialize do
  Plugins.add_search_facets(:resource, "finding_aid_status")
  Plugins.add_facet_group_i18n("finding_aid_status",
                              proc {|facet| "enumerations.resource_finding_aid_status.#{facet}" })
end
