-- 1. cr_med_coddestino_dominio
-- Table: modelo_ladm_col_med.cr_med_coddestino_dominio

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_coddestino_dominio;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_coddestino_dominio
(
    id numeric(2,0) NOT NULL,
    tipo character(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cr_med_coddestino_dominio_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_coddestino_dominio
    OWNER to postgres;
	
-- 2. cr_med_prediotipo_dominio
-- Table: modelo_ladm_col_med.cr_med_prediotipo_dominio

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_prediotipo_dominio;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_prediotipo_dominio
(
    id numeric(8,0) NOT NULL,
    tipo character(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT cr_med_prediotipo_dominio_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_prediotipo_dominio
    OWNER to postgres;

-- 3. cr_med_lote
-- Table: modelo_ladm_col_med.cr_med_lote

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_lote;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_lote
(
    cd_ced_ctstral character(6) COLLATE pg_catalog."default" NOT NULL,
    cd_comuna numeric(2,0) NOT NULL,
    cd_barrio numeric(3,0) NOT NULL,
    cd_manzana character(4) COLLATE pg_catalog."default" NOT NULL,
    cd_clasi_suelo numeric(2,0),
    cd_motivo numeric(2,0),
    cd_cbml_ant character(15) COLLATE pg_catalog."default",
    cd_zonageoeco numeric(7,0),
    cd_ind_ru_ur character(1) COLLATE pg_catalog."default",
    cd_estrato numeric(1,0),
    nm_ar_lote numeric(17,0),
    nm_ar_constru numeric(17,0),
    ds_nombre character(50) COLLATE pg_catalog."default",
    nm_escritura_rph numeric(10,0),
    fe_escritura_rph date,
    nm_notaria_rph numeric(6,0),
    cd_zhf numeric(15,0),
    cd_uso_lote numeric(2,0),
    cd_tipo_lote numeric(3,0),
    cd_caracter numeric(2,0),
    cd_existe_gdb character(1) COLLATE pg_catalog."default",
    nm_area_cmun_tot numeric(10,0),
    nm_pisos numeric(3,0),
    cd_estado numeric(1,0),
    cd_tipologia numeric(5,0),
    cd_homologa_area character(1) COLLATE pg_catalog."default",
    cd_censado character(1) COLLATE pg_catalog."default",
    ds_dir_lote character(70) COLLATE pg_catalog."default",
    nm_mejora numeric(3,0),
    cd_municipio numeric(5,0),
    codigo_postal numeric(6,0),
    cd_cbml character(13) COLLATE pg_catalog."default",
    fc_ult_censo date,
    norma_pot character(15) COLLATE pg_catalog."default",
    longitud character(20) COLLATE pg_catalog."default",
    latitud character(20) COLLATE pg_catalog."default",
    CONSTRAINT cr_med_lote_pkey PRIMARY KEY (cd_ced_ctstral, cd_comuna, cd_barrio, cd_manzana)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_lote
    OWNER to postgres;

-- 4. cr_med_predio
-- Table: modelo_ladm_col_med.cr_med_predio

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_predio;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_predio
(
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    num_pre_igac character(30) COLLATE pg_catalog."default",
    cd_ced_ctstral character(6) COLLATE pg_catalog."default",
    cd_comuna numeric(2,0),
    cd_barrio numeric(3,0),
    cd_manzana character(70) COLLATE pg_catalog."default",
    ds_tel character(12) COLLATE pg_catalog."default",
    ds_tel2 character(12) COLLATE pg_catalog."default",
    cd_zonageoeco numeric(7,0),
    vl_ptje_deseng numeric(7,0),
    cd_estrato numeric(1,0),
    nm_ar_constru numeric(17,0),
    nm_escritura character varying(80) COLLATE pg_catalog."default",
    nm_notaria numeric(6,0),
    ds_juzgado character(15) COLLATE pg_catalog."default",
    cd_caracer numeric(2,0),
    ds_urbanizacion character(50) COLLATE pg_catalog."default",
    cd_uso numeric(2,0),
    cd_ind_ru_ur character(1) COLLATE pg_catalog."default",
    cd_pisos numeric(3,0),
    cd_clasi_suelo numeric(2,0),
    cd_relacion numeric(1,0),
    nm_area_cmun_tot numeric(10,0),
    cd_corregimiento numeric(2,0),
    cd_vereda numeric(2,0),
    cd_compo_predio character(1) COLLATE pg_catalog."default",
    cd_liq_x_desengl character(1) COLLATE pg_catalog."default",
    formado character(1) COLLATE pg_catalog."default",
    nm_consecutivo numeric(20,0),
    cd_usuario character(12) COLLATE pg_catalog."default",
    cd_inconsist numeric(2,0),
    ds_obs_prdio character(255) COLLATE pg_catalog."default",
    cd_relacion_pred numeric(2,0),
    ds_folio numeric(10,0),
    cd_censado character(1) COLLATE pg_catalog."default",
    fc_construccion date,
    cd_iep numeric(5,0),
    cd_mejora numeric(5,0),
    cd_mat_nueva character(1) COLLATE pg_catalog."default",
    num_edificacion numeric(2,0),
    num_piso numeric(2,0),
    cd_unidad_predio numeric(4,0),
    nuip numeric(12,0),
    cd_genera_ppc character(1) COLLATE pg_catalog."default",
    fc_genera_ppc date,
    rs_genera_ppc character(25) COLLATE pg_catalog."default",
    cd_cbml character(13) COLLATE pg_catalog."default",
    num_ent_doc_sop character(15) COLLATE pg_catalog."default",
    fc_insc_registro character(20) COLLATE pg_catalog."default",
    tipo_doc_sop character(2) COLLATE pg_catalog."default",
    cd_destino_ladm numeric(2,0),
    tipo_predio numeric(8,0),
    CONSTRAINT cr_med_predio_pkey PRIMARY KEY (nm_mtcla_prdio),
    CONSTRAINT cr_med_predio_lote_fkey FOREIGN KEY (cd_ced_ctstral, cd_comuna, cd_barrio, cd_manzana)
        REFERENCES modelo_ladm_col_med.cr_med_lote (cd_ced_ctstral, cd_comuna, cd_barrio, cd_manzana) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cr_med_predio_destino FOREIGN KEY (cd_destino_ladm)
        REFERENCES modelo_ladm_col_med.cr_med_coddestino_dominio (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_cr_med_predio_tipo FOREIGN KEY (tipo_predio)
        REFERENCES modelo_ladm_col_med.cr_med_prediotipo_dominio (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_predio
    OWNER to postgres;
-- Index: idx_cr_med_predio_destino

-- DROP INDEX IF EXISTS modelo_ladm_col_med.idx_cr_med_predio_destino;

CREATE INDEX IF NOT EXISTS idx_cr_med_predio_destino
    ON modelo_ladm_col_med.cr_med_predio USING btree
    (cd_destino_ladm ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: idx_cr_med_predio_tipo

-- DROP INDEX IF EXISTS modelo_ladm_col_med.idx_cr_med_predio_tipo;

CREATE INDEX IF NOT EXISTS idx_cr_med_predio_tipo
    ON modelo_ladm_col_med.cr_med_predio USING btree
    (tipo_predio ASC NULLS LAST)
    TABLESPACE pg_default;

-- 5. cr_med_sgto_trmte
-- Table: modelo_ladm_col_med.cr_med_sgto_trmte

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_sgto_trmte;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_sgto_trmte
(
    nm_solicitud numeric(14,0) NOT NULL,
    nm_radicado numeric(9,0),
    cd_tramite numeric(4,0),
    cd_propietario character(20) COLLATE pg_catalog."default",
    ced_nit character(10) COLLATE pg_catalog."default",
    ced_nit_s character(10) COLLATE pg_catalog."default",
    ds_nombre character(40) COLLATE pg_catalog."default",
    ds_solicitante character(40) COLLATE pg_catalog."default",
    nm_telefono character(12) COLLATE pg_catalog."default",
    fc_ingreso date,
    hr_ingreso time without time zone,
    email character(40) COLLATE pg_catalog."default",
    ds_dir_encasilla character(70) COLLATE pg_catalog."default",
    fc_vencimiento date,
    nm_informe character(25) COLLATE pg_catalog."default",
    nm_resolucion character(25) COLLATE pg_catalog."default",
    fc_solucion date,
    cd_estado character(2) COLLATE pg_catalog."default",
    ds_observacion character(255) COLLATE pg_catalog."default",
    cd_respuesta character(2) COLLATE pg_catalog."default",
    ds_reclamar_en character(2) COLLATE pg_catalog."default",
    fc_ultimo_mvmnto date,
    cd_usuario character(12) COLLATE pg_catalog."default",
    cd_usuario_ingr character(12) COLLATE pg_catalog."default",
    ds_ingreso character(40) COLLATE pg_catalog."default",
    ds_origen character(40) COLLATE pg_catalog."default",
    ds_prioridad character(40) COLLATE pg_catalog."default",
    fecha_inf_res date,
    fecha_tramite date,
    nm_tellefono_cel character(10) COLLATE pg_catalog."default",
    ficho_padre numeric(14,0),
    cd_trmte_act character(1) COLLATE pg_catalog."default",
    ext_key character(12) COLLATE pg_catalog."default",
    zgravable numeric(4,0),
    municipio numeric(18,0),
    nom_municipio character(50) COLLATE pg_catalog."default",
    cd_dane character(12) COLLATE pg_catalog."default",
    CONSTRAINT cr_med_sgto_trmte_pkey PRIMARY KEY (nm_solicitud)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_sgto_trmte
    OWNER to postgres;

-- 6. cr_med_sgto_matri
-- Table: modelo_ladm_col_med.cr_med_sgto_matri

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_sgto_matri;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_sgto_matri
(
    nm_solicitud numeric(14,0) NOT NULL,
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    cd_propietario character(20) COLLATE pg_catalog."default",
    fc_ultimo_mvmnto date,
    cd_usuario character(12) COLLATE pg_catalog."default",
    ds_nombre character(40) COLLATE pg_catalog."default",
    vl_avaluo_totala numeric(20,0),
    vl_avaluo_totalc numeric(20,0),
    ds_observacion character(255) COLLATE pg_catalog."default",
    ds_edificio_urb character(255) COLLATE pg_catalog."default",
    num_veces numeric(14,0),
    ds_tpo_ingr_trmt character(40) COLLATE pg_catalog."default",
    cd_comuna numeric(2,0),
    cd_barrio numeric(3,0),
    ds_comuna character(40) COLLATE pg_catalog."default",
    ds_barrio character(40) COLLATE pg_catalog."default",
    cd_manzana character(4) COLLATE pg_catalog."default",
    cd_ced_ctstral character(6) COLLATE pg_catalog."default",
    rev_ava character(1) COLLATE pg_catalog."default",
    area character(1) COLLATE pg_catalog."default",
    nomencla character(1) COLLATE pg_catalog."default",
    rect_cargue character(1) COLLATE pg_catalog."default",
    ava_cero character(1) COLLATE pg_catalog."default",
    sinrel_pp character(1) COLLATE pg_catalog."default",
    sol_info character(1) COLLATE pg_catalog."default",
    porc_dsng character(1) COLLATE pg_catalog."default",
    uso character(1) COLLATE pg_catalog."default",
    tipo character(1) COLLATE pg_catalog."default",
    otros character(1) COLLATE pg_catalog."default",
    porc_derecho numeric(7,0),
    nm_resolucion character(25) COLLATE pg_catalog."default",
    fecha_res date,
    nm_informe character(25) COLLATE pg_catalog."default",
    fecha_inf date,
    cd_uso numeric(2,0),
    cd_tipo numeric(3,0),
    CONSTRAINT cr_med_sgto_matri_pkey PRIMARY KEY (nm_solicitud, nm_mtcla_prdio),
    CONSTRAINT cr_med_sgto_matri_predio_fkey FOREIGN KEY (nm_mtcla_prdio)
        REFERENCES modelo_ladm_col_med.cr_med_predio (nm_mtcla_prdio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT cr_med_sgto_matri_solicitud_fkey FOREIGN KEY (nm_solicitud)
        REFERENCES modelo_ladm_col_med.cr_med_sgto_trmte (nm_solicitud) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_sgto_matri
    OWNER to postgres;

-- 7. cr_med_resolucion
-- Table: modelo_ladm_col_med.cr_med_resolucion

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_resolucion;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_resolucion
(
    nm_resolucion numeric(20,0) NOT NULL,
    ano numeric(4,0) NOT NULL,
    resol_motivada character(25) COLLATE pg_catalog."default" NOT NULL,
    nm_secuencia numeric(4,0) NOT NULL,
    nm_reso_madre numeric(20,0) NOT NULL,
    fecha date,
    hora time without time zone,
    cd_usuario character(12) COLLATE pg_catalog."default",
    area_total_lote numeric(17,0),
    area_total_const numeric(17,0),
    cd_comuna numeric(2,0),
    cd_barrio numeric(3,0),
    cd_manzana character(4) COLLATE pg_catalog."default",
    cd_ced_catastral character(6) COLLATE pg_catalog."default",
    estado_res character(1) COLLATE pg_catalog."default",
    tipo_mutacion character(10) COLLATE pg_catalog."default",
    cd_corregimiento numeric(2,0),
    cd_vereda numeric(2,0),
    area_comun_total numeric(10,0),
    vl_ptje_deseng numeric(7,0),
    cd_uso numeric(2,0),
    cd_tipo numeric(3,0),
    vl_porc_dscto numeric(7,0),
    crxsec character(1) COLLATE pg_catalog."default",
    CONSTRAINT cr_med_resolucion_pkey PRIMARY KEY (nm_resolucion, ano, resol_motivada, nm_secuencia, nm_reso_madre)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_resolucion
    OWNER to postgres;

-- 8. cr_med_construc
-- Table: modelo_ladm_col_med.cr_med_construc

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_construc;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_construc
(
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    cd_uso numeric(2,0) NOT NULL,
    cd_tipo numeric(3,0) NOT NULL,
    nm_ptje numeric(3,0) NOT NULL,
    nm_id_construct numeric(3,0) NOT NULL,
    nm_area numeric(17,0),
    nm_porcent_area numeric(7,0),
    ds_tipo_constru character(1) COLLATE pg_catalog."default",
    nm_e_armazon numeric(3,0),
    nm_e_muro numeric(3,0),
    nm_e_cubierta numeric(3,0),
    nm_e_conserv numeric(3,0),
    nm_a_fachada numeric(3,0),
    nm_a_cubrimnto numeric(3,0),
    nm_a_piso numeric(3,0),
    nm_a_conserv numeric(3,0),
    nm_b_tamano numeric(3,0),
    nm_b_enchape numeric(3,0),
    nm_b_mobiliario numeric(3,0),
    nm_b_conserv numeric(3,0),
    nm_c_tamano numeric(3,0),
    nm_c_enchape numeric(3,0),
    nm_c_mobiliario numeric(3,0),
    nm_c_conserv numeric(3,0),
    nm_i_cercha numeric(3,0),
    nm_i_altura numeric(3,0),
    nm_vetustez numeric(3,0),
    nm_piso numeric(3,0),
    nm_habitacion numeric(3,0),
    nm_banio numeric(3,0),
    nm_local numeric(3,0),
    ds_acueducto character(1) COLLATE pg_catalog."default",
    ds_alcantarill character(1) COLLATE pg_catalog."default",
    ds_energia character(1) COLLATE pg_catalog."default",
    ds_telefono character(1) COLLATE pg_catalog."default",
    ds_gas character(1) COLLATE pg_catalog."default",
    ds_internet character(1) COLLATE pg_catalog."default",
    vl_avaluo_const1 numeric(20,0),
    vl_avaluo_const2 numeric(20,0),
    obs_calificacion character(255) COLLATE pg_catalog."default",
    nm_ptje_califica numeric(3,0),
    nm_ptje_anterior numeric(3,0),
    usuario_mod_cali character(12) COLLATE pg_catalog."default",
    fecha_mod_cali date,
    cd_ava_especial numeric(2,0),
    nm_ubica_piso numeric(3,0),
    avaluo_lote numeric(20,0),
    avaluo_construccion numeric(20,0),
    avaluo_total numeric(20,0),
    cd_estrato numeric(1,0),
    cd_uso_ladm numeric(3,0),
    cd_tipologia_ladm numeric(3,0),
    fc_construccion date,
    modelo character(40) COLLATE pg_catalog."default",
    identificador character(12) COLLATE pg_catalog."default",
    CONSTRAINT cr_med_construc_pkey PRIMARY KEY (nm_mtcla_prdio, cd_uso, cd_tipo, nm_ptje, nm_id_construct),
    CONSTRAINT cr_med_construc_predio_fkey FOREIGN KEY (nm_mtcla_prdio)
        REFERENCES modelo_ladm_col_med.cr_med_predio (nm_mtcla_prdio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_construc
    OWNER to postgres;

-- 9. cr_med_zonas_priv
-- Table: modelo_ladm_col_med.cr_med_zonas_priv

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_zonas_priv;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_zonas_priv
(
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    cd_uso numeric(2,0) NOT NULL,
    cd_tipo numeric(3,0) NOT NULL,
    cd_area_privada character(2) COLLATE pg_catalog."default" NOT NULL,
    nm_ptje numeric(3,0) NOT NULL,
    nm_id_construct numeric(3,0) NOT NULL,
    ds_dir character(70) COLLATE pg_catalog."default",
    nm_area_zona_pri numeric(17,0),
    CONSTRAINT cr_med_zonas_priv_pkey PRIMARY KEY (nm_mtcla_prdio, cd_uso, cd_tipo, cd_area_privada, nm_ptje, nm_id_construct),
    CONSTRAINT cr_med_zonas_priv_construc_fkey FOREIGN KEY (nm_mtcla_prdio, cd_uso, cd_tipo, nm_ptje, nm_id_construct)
        REFERENCES modelo_ladm_col_med.cr_med_construc (nm_mtcla_prdio, cd_uso, cd_tipo, nm_ptje, nm_id_construct) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_zonas_priv
    OWNER to postgres;

-- 10. cr_med_resolxmatri
-- Table: modelo_ladm_col_med.cr_med_resolxmatri

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_resolxmatri;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_resolxmatri
(
    nm_resolucion numeric(20,0) NOT NULL,
    ano numeric(4,0) NOT NULL,
    resol_motivada character(25) COLLATE pg_catalog."default" NOT NULL,
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    nm_secuencia numeric(4,0) NOT NULL,
    nm_reso_madre numeric(20,0) NOT NULL,
    cod_interno character(9) COLLATE pg_catalog."default" NOT NULL,
    ds_dir character(50) COLLATE pg_catalog."default",
    cd_zonageoeco numeric(7,0),
    vl_mtr_lote money,
    vl_avaluo_lote numeric(20,0),
    vl_avaluo_contru numeric(20,0),
    vl_avaluo_total numeric(20,0),
    cd_uso numeric(2,0),
    cd_tipo numeric(3,0),
    componente_prdio character(1) COLLATE pg_catalog."default",
    ind_afectacion character(1) COLLATE pg_catalog."default",
    vl_ptje_deseng numeric(7,0),
    resol_aux character(22) COLLATE pg_catalog."default",
    no_vig character(1) COLLATE pg_catalog."default",
    flag character(1) COLLATE pg_catalog."default",
    nm_solicitud numeric(14,0),
    nm_radicado numeric(9,0),
    fecha_tramite date,
    CONSTRAINT cr_med_resolxmatri_pkey PRIMARY KEY (nm_resolucion, ano, resol_motivada, nm_mtcla_prdio, nm_secuencia, nm_reso_madre, cod_interno),
    CONSTRAINT cr_med_resolxmatri_resol_fkey FOREIGN KEY (nm_resolucion, ano, resol_motivada, nm_secuencia, nm_reso_madre)
        REFERENCES modelo_ladm_col_med.cr_med_resolucion (nm_resolucion, ano, resol_motivada, nm_secuencia, nm_reso_madre) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT cr_med_resolxmatri_sgto_matri_fkey FOREIGN KEY (nm_solicitud, nm_mtcla_prdio)
        REFERENCES modelo_ladm_col_med.cr_med_sgto_matri (nm_solicitud, nm_mtcla_prdio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_resolxmatri
    OWNER to postgres;

-- 11. cr_med_propiedad
-- Table: modelo_ladm_col_med.cr_med_propiedad

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_propiedad;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_propiedad
(
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    cd_propietario character(20) COLLATE pg_catalog."default" NOT NULL,
    ced_nit_propieta character(10) COLLATE pg_catalog."default" NOT NULL,
    cd_ced_ctstral character(6) COLLATE pg_catalog."default",
    cd_tipo_propieta character(1) COLLATE pg_catalog."default",
    cd_vigente character(1) COLLATE pg_catalog."default",
    porc_derecho numeric(7,0),
    nm_documento numeric(8,0),
    nm_cuentas_venci numeric(4,0),
    cd_tipo_document character(1) COLLATE pg_catalog."default",
    cd_tiene_deuda character(1) COLLATE pg_catalog."default",
    cd_mutacion numeric(4,0),
    fc_mutacion date,
    liquidado character(1) COLLATE pg_catalog."default",
    liq_anticipada character(1) COLLATE pg_catalog."default",
    fecha_actualizacion timestamp without time zone,
    nombre character(40) COLLATE pg_catalog."default",
    apellido character(40) COLLATE pg_catalog."default",
    nro_identi character(60) COLLATE pg_catalog."default",
    clase_id character(6) COLLATE pg_catalog."default",
    CONSTRAINT cr_med_propiedad_pkey PRIMARY KEY (nm_mtcla_prdio, cd_propietario, ced_nit_propieta),
    CONSTRAINT cr_med_propiedad_predio_fkey FOREIGN KEY (nm_mtcla_prdio)
        REFERENCES modelo_ladm_col_med.cr_med_predio (nm_mtcla_prdio) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_propiedad
    OWNER to postgres;

-- 12. cr_med_ava_predio
-- Table: modelo_ladm_col_med.cr_med_ava_predio

-- DROP TABLE IF EXISTS modelo_ladm_col_med.cr_med_ava_predio;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.cr_med_ava_predio
(
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    vl_av_lote numeric(20,0),
    vl_av_constru numeric(20,0),
    vl_av_lote_fu numeric(20,0),
    vl_av_constru_fu numeric(20,0),
    vl_avaluo_total numeric(20,0),
    vl_avaluo_tot_fu numeric(20,0),
    ds_tipo_avaluo character(3) COLLATE pg_catalog."default",
    ds_observaciones character(255) COLLATE pg_catalog."default",
    fc_periodo_desde date,
    fc_periodo_hasta date,
    nm_consecutivo numeric(20,0),
    nm_incremento numeric(20,0),
    vl_av_lote_cal numeric(20,0),
    vl_av_constr_cal numeric(20,0),
    vl_av_total_cal numeric(20,0),
    cd_usuario_incre character(12) COLLATE pg_catalog."default",
    CONSTRAINT cr_med_ava_predio_pkey PRIMARY KEY (nm_mtcla_prdio),
    CONSTRAINT cr_med_ava_predio_predio_fkey FOREIGN KEY (nm_mtcla_prdio)
        REFERENCES modelo_ladm_col_med.cr_med_predio (nm_mtcla_prdio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.cr_med_ava_predio
    OWNER to postgres;

-- 13. homologacion_predio
-- Table: modelo_ladm_col_med.homologacion_predio

-- DROP TABLE IF EXISTS modelo_ladm_col_med.homologacion_predio;

CREATE TABLE IF NOT EXISTS modelo_ladm_col_med.homologacion_predio
(
    nm_mtcla_prdio numeric(9,0) NOT NULL,
    t_id bigint NOT NULL,
    CONSTRAINT homologacion_predio_pkey PRIMARY KEY (nm_mtcla_prdio, t_id),
    CONSTRAINT homologacion_predio_ladm_fkey FOREIGN KEY (t_id)
        REFERENCES modelo_ladm_col_med.cr_predio (t_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT homologacion_predio_med_fkey FOREIGN KEY (nm_mtcla_prdio)
        REFERENCES modelo_ladm_col_med.cr_med_predio (nm_mtcla_prdio) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS modelo_ladm_col_med.homologacion_predio
    OWNER to postgres;
