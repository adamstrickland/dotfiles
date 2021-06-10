setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

syn region dbtStatement    matchgroup=Snip start="{%" end="%}" contains=dbtClass,dbtComment,dbtConfig,dbtDeclaration,dbtFunction,dbtKeyword,dbtMacro,dbtMethod,dbtString
syn region dbtExpression   matchgroup=Snip start="{{" end="}}" contains=dbtClass,dbtComment,dbtConfig,dbtDeclaration,dbtFunction,dbtKeyword,dbtMacro,dbtMethod,dbtString
syn region dbtComment      matchgroup=Snip start="{#" end="#}"

syn region dbtString       start=+'+ end=+'+ contained
syn region dbtString       start=+"+ end=+"+ contained

syn keyword dbtClass       Relation contained
syn keyword dbtClass       Column contained
syn keyword dbtClass       BigQueryColumn contained
syn keyword dbtClass       Result contained
"
" General configurations
syn keyword dbtConfig      alias database enabled persist_docs post_hook pre_hook schema tags contained
" Model configurations
syn keyword dbtConfig      dist materialized sort sql_header contained
" Provider-specific Model configurations
" BigQuery
" syn keyword dbtConfig  cluster_by data_type encrypted field grant_access_to granularity hours_to_expiration incremental_strategy insert_overwrite kms_key_name labels merge partition_by partitions range contained
" Redshift
" syn keyword dbtConfig  contained
" Snowflake
syn keyword dbtConfig automatic_clustering cluster_by copy_grants query_tag secure sensitive snowflake_warehouse transient contained
" Spark
" syn keyword dbtConfig     contained
" Snapshot configurations
syn keyword dbtConfig      check_cols invalidate_hard_deletes strategy target_database target_schema updated_at unique_key contained
" Data test configurations
syn keyword dbtConfig      severity


syn keyword dbtDeclaration set contained


syn keyword dbtFunction    adapter as_bool as_native as_number as_text contained
syn keyword dbtFunction    builtins contained
syn keyword dbtFunction    config contained
syn keyword dbtFunction    dbt_utils dbt_version dbt-project-yml-context debug-method doc contained
syn keyword dbtFunction    env_var exceptions execute contained
syn keyword dbtFunction    flags fromjson fromyaml contained
syn keyword dbtFunction    graph contained
syn keyword dbtFunction    invocation_id contained
syn keyword dbtFunction    log contained
syn keyword dbtFunction    modules contained
syn keyword dbtFunction    on-run-end-context contained
syn keyword dbtFunction    profiles-yml-context project_name contained
syn keyword dbtFunction    ref return run_query run_started_at contained
syn keyword dbtFunction    schema schemas source statement-blocks contained
syn keyword dbtFunction    target this tojson toyaml contained
syn keyword dbtFunction    var contained


syn keyword dbtKeyword     for in endfor contained


syn keyword dbtMacro       docs enddocs endmacro endsnapshot macro snapshot contained


syn keyword dbtMethod      database schema identifier include is_table is_view is_cte contained
syn keyword dbtMethod      name quoted data_type is_string is_numeric is_number is_float string_size string_type numeric_type contained
syn keyword dbtMethod      fields flatten contained
syn keyword dbtMethod      node status thread_id execution_time timing adapter_response message contained


highlight link dbtClass        sqlKeyword
highlight link dbtComment      sqlComment
highlight link dbtConfig       sqlFunction
highlight link dbtDeclaration  sqlType
highlight link dbtFunction     sqlFunction
highlight link dbtKeyword      sqlKeyword
highlight link dbtMacro        dbtKeyword
highlight link dbtMethod       sqlFunction
highlight link dbtString       sqlString


" syn region dbtJinja matchgroup=Quote start="{{" end="}}"

syn keyword sqlKeyword as from with join left outer group by order on having
highlight link sqlKeyword Keyword

syn region sqlIdentifier matchgroup=NONE start=+n\?`+ end=+`+
highlight link sqlIdentifier Identifier
