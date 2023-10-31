prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.5'
,p_default_workspace_id=>21343001332048214
,p_default_application_id=>126
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PLUGINS'
);
end;
/
 
prompt APPLICATION 126 - Template Component
--
-- Application Export:
--   Application:     126
--   Name:            Template Component
--   Date and Time:   20:06 Tuesday October 31, 2023
--   Exported By:     PLUGINS
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 21954299523546710
--   Manifest End
--   Version:         23.1.5
--   Instance ID:     7876363916116018
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/apex_lmoreaux_empty_state
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(21954299523546710)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'APEX.LMOREAUX.EMPTY_STATE'
,p_display_name=>'Empty State'
,p_supported_component_types=>'PARTIAL'
,p_css_file_urls=>'#PLUGIN_FILES#css/empty-state#MIN#.css'
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div></div>',
'{else/}',
'    <div class="es-container es--#LINK_TYPE#">',
'        {case LINK_TYPE/}',
'            {when block/}',
'                <div class="es-link">',
'                    <a href="#LINK#">',
'        {endcase/}',
'        <div class="es-img-container">',
'             {case IMAGE_TYPE/}',
'                {when image/}',
'                    <img src="#IMG_SRC#"></span>',
'                {when icon/}',
'                    <span class="fa #ICON_CSS_CLASS#"></span>',
'            {endcase/}',
'        </div>',
'        <div class="es-title">',
'            <span>#TITLE#</span>',
'        </div>',
'        {if SUBTITLE%assigned/}',
'        <div class="es-subtitle">',
'            <span>#SUBTITLE#</span>',
'        </div>',
'        {endif/}',
'        {case LINK_TYPE/}',
'            {when button/}',
'            <div class="es-link">',
'                <a href="#LINK#">',
'                    <button type="button" class="t-Button t-Button--icon t-Button--hot t-Button--iconLeft">',
'                        <span aria-hidden="true" class="t-Icon t-Icon--left #LINK_ICON#"></span>#LINK_TEXT#',
'                    </button>',
'        {endcase/}',
'        </a>',
'        </div>',
'    </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>2
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>'Displaying an empty state with image/icon, title, subtitle and link to another page'
,p_version_identifier=>'1.0'
,p_about_url=>'https://lmoreaux.hashnode.dev/'
,p_files_version=>15
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(21954990052546815)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'IMAGE_TYPE'
,p_prompt=>'Image Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose between icon and image'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(21958265971556660)
,p_plugin_attribute_id=>wwv_flow_imp.id(21954990052546815)
,p_display_sequence=>10
,p_display_value=>'Icon'
,p_return_value=>'icon'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(21958645343557395)
,p_plugin_attribute_id=>wwv_flow_imp.id(21954990052546815)
,p_display_sequence=>20
,p_display_value=>'Image'
,p_return_value=>'image'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(21955373177546815)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'IMG_SRC'
,p_prompt=>'Image Source'
,p_attribute_type=>'MEDIA'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(21954990052546815)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_help_text=>'Choose the image source'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(21954515297546811)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'ICON_CSS_CLASS'
,p_prompt=>'Icon CSS Class'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(21954990052546815)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_help_text=>'Choose the icon to be displayed'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(21957322905546816)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Choose the title to be displayed'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(21956949405546816)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'SUBTITLE'
,p_prompt=>'Subtitle'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Choose the subtitle to be displayed'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(22358140633475982)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'LINK_TYPE'
,p_prompt=>'Link Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'button'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose between a button or a block link'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(22358457152476628)
,p_plugin_attribute_id=>wwv_flow_imp.id(22358140633475982)
,p_display_sequence=>10
,p_display_value=>'Button'
,p_return_value=>'button'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(22358871459477392)
,p_plugin_attribute_id=>wwv_flow_imp.id(22358140633475982)
,p_display_sequence=>20
,p_display_value=>'Block'
,p_return_value=>'block'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(21955779979546815)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'LINK'
,p_prompt=>'Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Choose the link to redirect the user to'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(21956105247546816)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'LINK_TEXT'
,p_prompt=>'Link Text'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(22358140633475982)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'button'
,p_help_text=>'Choose the button text'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(22431350807866714)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'LINK_ICON'
,p_prompt=>'Link Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(22358140633475982)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'button'
,p_help_text=>'Choose the button icon'
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E65732D636F6E7461696E65722E65732D2D627574746F6E2C202E65732D636F6E7461696E65722E65732D2D626C6F636B2061207B0D0A20202020646973706C61793A20666C65783B0D0A20202020666C65782D646972656374696F6E3A20636F6C756D';
wwv_flow_imp.g_varchar2_table(2) := '6E3B0D0A20202020616C69676E2D6974656D733A2063656E7465723B0D0A7D0D0A0D0A2E65732D636F6E7461696E65722E65732D2D626C6F636B2061207B0D0A20202020636F6C6F723A20696E68657269743B0D0A7D0D0A0D0A2E65732D636F6E746169';
wwv_flow_imp.g_varchar2_table(3) := '6E65722E65732D2D626C6F636B202E65732D6C696E6B207B0D0A2020202077696474683A20313030253B0D0A20202020626F726465723A203270782064617368656420677261793B0D0A2020202070616464696E673A203172656D3B0D0A7D0D0A0D0A2E';
wwv_flow_imp.g_varchar2_table(4) := '65732D636F6E7461696E65722E65732D2D627574746F6E202E65732D6C696E6B207B0D0A202020206D617267696E3A20302E3572656D3B0D0A7D0D0A0D0A2E65732D696D672D636F6E7461696E657220696D67207B0D0A202020206D61782D7769647468';
wwv_flow_imp.g_varchar2_table(5) := '3A2031323870783B0D0A2020202070616464696E673A203172656D3B0D0A7D0D0A0D0A2E65732D696D672D636F6E7461696E6572207370616E2E66613A3A6265666F7265207B0D0A20202020666F6E742D73697A653A20393270783B0D0A7D0D0A0D0A2E';
wwv_flow_imp.g_varchar2_table(6) := '65732D7469746C65207B0D0A20202020666F6E742D73697A653A20782D6C617267653B0D0A20202020666F6E742D7765696768743A203530303B0D0A202020206D617267696E2D626F74746F6D3A203172656D3B0D0A7D0D0A0D0A2E65732D7375627469';
wwv_flow_imp.g_varchar2_table(7) := '746C65207B0D0A20202020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F7220293B0D0A7D0D0A0D0A0D0A0D0A';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(22277897314698623)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_file_name=>'css/empty-state.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E65732D636F6E7461696E65722E65732D2D626C6F636B20612C2E65732D636F6E7461696E65722E65732D2D627574746F6E7B646973706C61793A666C65783B666C65782D646972656374696F6E3A636F6C756D6E3B616C69676E2D6974656D733A6365';
wwv_flow_imp.g_varchar2_table(2) := '6E7465727D2E65732D636F6E7461696E65722E65732D2D626C6F636B20617B636F6C6F723A696E68657269747D2E65732D636F6E7461696E65722E65732D2D626C6F636B202E65732D6C696E6B7B77696474683A313030253B626F726465723A32707820';
wwv_flow_imp.g_varchar2_table(3) := '64617368656420677261793B70616464696E673A3172656D7D2E65732D636F6E7461696E65722E65732D2D627574746F6E202E65732D6C696E6B7B6D617267696E3A2E3572656D7D2E65732D696D672D636F6E7461696E657220696D677B6D61782D7769';
wwv_flow_imp.g_varchar2_table(4) := '6474683A31323870783B70616464696E673A3172656D7D2E65732D696D672D636F6E7461696E6572207370616E2E66613A3A6265666F72657B666F6E742D73697A653A393270787D2E65732D7469746C657B666F6E742D73697A653A782D6C617267653B';
wwv_flow_imp.g_varchar2_table(5) := '666F6E742D7765696768743A3530303B6D617267696E2D626F74746F6D3A3172656D7D2E65732D7375627469746C657B636F6C6F723A766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72297D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(22397353997605871)
,p_plugin_id=>wwv_flow_imp.id(21954299523546710)
,p_file_name=>'css/empty-state.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
