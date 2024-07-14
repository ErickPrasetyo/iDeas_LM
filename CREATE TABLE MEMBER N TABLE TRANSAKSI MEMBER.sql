------HAPUS TABLE JIKA ADA------
DROP TABLE IF EXISTS master.member_online;
DROP TABLE IF EXISTS master.member_online_email;
DROP TABLE IF EXISTS transaksi.nota__online_detail;
DROP SEQUENCE IF EXISTS transaksi.sq_nota_online_detail;
DROP TABLE IF EXISTS transaksi.nota_online;
DROP SEQUENCE IF EXISTS transaksi.sq_nota_online;
------END OF HAPUS TABLE JIKA ADA------



------CREATE TABLE MEMBER-------
CREATE TABLE IF NOT EXISTS master.member_online_email
(
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    kd_rekanan character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT member_online_email_pkey PRIMARY KEY (email)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE IF EXISTS master.member_online_email
    OWNER to ideas;
	
CREATE TABLE IF NOT EXISTS master.member_online
(
    kd_member character varying(20) COLLATE pg_catalog."default" NOT NULL,
    nama_member character varying(255) COLLATE pg_catalog."default" NOT NULL,
    alamat character varying(255) COLLATE pg_catalog."default" NOT NULL,
    jenis_member character varying(50) COLLATE pg_catalog."default" NOT NULL,
    telephone_gsm character varying(100) COLLATE pg_catalog."default" NOT NULL,
    telephone_wa character varying(100) COLLATE pg_catalog."default" NOT NULL,
    email character varying(100) COLLATE pg_catalog."default" NOT NULL,
    nama_akun_bank character varying(100) COLLATE pg_catalog."default" NOT NULL,
    nama_bank character varying(100) COLLATE pg_catalog."default" NOT NULL,
    no_rek_bank integer NOT NULL,
    disc_member_psn numeric(17,2) NOT NULL DEFAULT 0,
    disc_member_rp numeric(17,2) NOT NULL DEFAULT 0,
    min_buy numeric(17,2) NOT NULL DEFAULT 0,
    max_buy numeric(17,2) NOT NULL DEFAULT 0,
    id_rek_gl character varying(30) COLLATE pg_catalog."default",
    usr_ins character varying(30) COLLATE pg_catalog."default" NOT NULL DEFAULT 'MEMBER'::character varying,
    usr_upd character varying(30) COLLATE pg_catalog."default" NOT NULL DEFAULT 'MEMBER'::character varying,
    dt_ins timestamp without time zone NOT NULL DEFAULT now(),
    dt_upd timestamp without time zone NOT NULL DEFAULT now(),
    isaktif character varying(1) COLLATE pg_catalog."default" DEFAULT '1'::character varying,
    no_refferal character varying(20) COLLATE pg_catalog."default",
    refferal_isclaim character varying(1) COLLATE pg_catalog."default" DEFAULT '0'::character varying,
    CONSTRAINT member_online_kd_member_pkey PRIMARY KEY (kd_member),
    CONSTRAINT member_online_email_member_online_email_email_fkey FOREIGN KEY (email)
        REFERENCES master.member_online_email (email) MATCH FULL
        ON UPDATE CASCADE
        ON DELETE RESTRICT
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE IF EXISTS master.member_online
    OWNER to ideas;

CREATE TRIGGER tbi_date_ins
    BEFORE INSERT
    ON master.member_online
    FOR EACH ROW
    EXECUTE FUNCTION master.fn_tbi_date_ins();

CREATE TRIGGER tbu_date_upd
    BEFORE UPDATE 
    ON master.member_online
    FOR EACH ROW
    EXECUTE FUNCTION master.fn_tbu_date_upd();
------END OF CREATE TABLE MEMBER-------



------CREATE TABLE NOTA_ONLINE (TABLE TRANSAKSI APLIKASI ANDROID)-------
CREATE SEQUENCE IF NOT EXISTS transaksi.sq_nota_online
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
ALTER SEQUENCE transaksi.sq_nota_online
    OWNER TO ideas;
	
CREATE TABLE IF NOT EXISTS transaksi.nota_online
(
    id_nota bigint NOT NULL DEFAULT nextval('transaksi.sq_nota_online'::regclass),
    no_nota character varying(30) COLLATE pg_catalog."default",
    dt_nota timestamp without time zone NOT NULL,
    no_bukti character varying(30) COLLATE pg_catalog."default",
    no_faktur_pajak character varying(50) COLLATE pg_catalog."default",
    dt_ins timestamp without time zone NOT NULL DEFAULT now(),
    dt_upd timestamp without time zone NOT NULL DEFAULT now(),
    shift integer,
    usr_ins character varying(30) COLLATE pg_catalog."default" NOT NULL DEFAULT 'CUSTOMER'::character varying,
    usr_upd character varying(30) COLLATE pg_catalog."default" NOT NULL DEFAULT 'CUSTOMER'::character varying,
    usr_operator character varying(30) COLLATE pg_catalog."default" NOT NULL DEFAULT 'admin'::character varying,
    ispost character varying(1) COLLATE pg_catalog."default" NOT NULL,
    iscancel character varying(1) COLLATE pg_catalog."default" NOT NULL,
    isdelete character varying(1) COLLATE pg_catalog."default" NOT NULL,
    isget character varying(1) COLLATE pg_catalog."default" NOT NULL DEFAULT '0'::character varying,
    iskirim character varying(1) COLLATE pg_catalog."default" NOT NULL,
    dt_kirim timestamp without time zone,
    status character varying(1) COLLATE pg_catalog."default" NOT NULL,
    kd_member character varying(20) COLLATE pg_catalog."default",
    id_trans character varying(10) COLLATE pg_catalog."default" NOT NULL,
    id_rek_gl character varying(30) COLLATE pg_catalog."default",
    cara_bayar character varying(20) COLLATE pg_catalog."default" NOT NULL,
    nama_bank character varying(50) COLLATE pg_catalog."default",
    no_rek_bank character varying(50) COLLATE pg_catalog."default",
    sub_total numeric(17,2) NOT NULL,
    disc_member_rp numeric(17,2) NOT NULL DEFAULT 0,
    disc_item_rp numeric(17,2) NOT NULL DEFAULT 0,
    total numeric(17,2) NOT NULL DEFAULT 0,
    ppn numeric(17,2) NOT NULL DEFAULT 0,
    total_n_ppn numeric(17,2) NOT NULL DEFAULT 0,
    catatan_belanja character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT pk_nota_online PRIMARY KEY (id_nota)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE IF EXISTS transaksi.nota_online
    OWNER to ideas;

CREATE TRIGGER tbi_date_ins
    BEFORE INSERT
    ON transaksi.nota_online
    FOR EACH ROW
    EXECUTE FUNCTION master.fn_tbi_date_ins();

CREATE TRIGGER tbu_date_upd
    BEFORE UPDATE 
    ON transaksi.nota_online
    FOR EACH ROW
    EXECUTE FUNCTION master.fn_tbu_date_upd();
------END OF CREATE TABLE NOTA_ONLINE (TABLE TRANSAKSI APLIKASI ANDROID)-------



------CREATE TABLE NOTA_ONLINE_DETAIL (TABLE TRANSAKSI APLIKASI ANDROID)-------
CREATE SEQUENCE IF NOT EXISTS transaksi.sq_nota_online_detail
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
ALTER SEQUENCE transaksi.sq_nota_online_detail
    OWNER TO ideas;
	
CREATE TABLE IF NOT EXISTS transaksi.nota__online_detail
(
    id_nota_detail bigint NOT NULL DEFAULT nextval('transaksi.sq_nota_online_detail'::regclass),
    id_nota bigint NOT NULL,
    id_rek_gl character varying(30) COLLATE pg_catalog."default",
    nomor integer,
    jns_item character varying(50) COLLATE pg_catalog."default" NOT NULL,
    ispromo character varying(1) COLLATE pg_catalog."default" DEFAULT '0'::character varying,
    kd_item character varying(50) COLLATE pg_catalog."default" NOT NULL,
    nama_item character varying(100) COLLATE pg_catalog."default" NOT NULL,
    qty numeric(9,2) NOT NULL DEFAULT (0)::numeric,
    satuan character varying(50) COLLATE pg_catalog."default",
    hrg_jual numeric(17,2) NOT NULL DEFAULT (0)::numeric,
    disc_rp numeric(17,2) NOT NULL DEFAULT (0)::numeric,
    disc_psn numeric(9,2) NOT NULL DEFAULT (0)::numeric,
    sub_total numeric(17,2) NOT NULL DEFAULT (0)::numeric,
    status character varying(1) COLLATE pg_catalog."default" DEFAULT '0'::character varying,
    keterangan character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT pk_nota__online_detail PRIMARY KEY (id_nota_detail),
    CONSTRAINT fk_nota__online_detail_id_nota_nota_online FOREIGN KEY (id_nota)
        REFERENCES transaksi.nota_online (id_nota) MATCH FULL
        ON UPDATE CASCADE
        ON DELETE CASCADE
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;
ALTER TABLE IF EXISTS transaksi.nota__online_detail
    OWNER to ideas;
------END OF CREATE TABLE NOTA_ONLINE_DETAIL (TABLE TRANSAKSI APLIKASI ANDROID)-------


----INFORMASI DATA (NOTED)----
/*

- Master Perusahaan		:= 	select * from master.perusahaan;
- Master Member Offline	:=	select * from master.mrekanan where jenis='CUSTOMER';
- Master Member Mobile	:=	select * from master.member_online;
- Master Item			:=	select * from master.item where isdetail='1';
- Config Promo Item		:=	SELECT * FROM master.item_promo;
- Get Promo After Config:=	select (case when b.kd_item is null then 'TIDAK ADA PROMO' else 'PROMO '||b.jenis end)::varchar(100) as status_promo,
									   (case when b.jenis='UANG' then 'SETIAP PEMBELIAN '||b.qty_promo::integer||' PCS '||a.nama_item::varchar(14)||'.., DISKON "Rp. '||b.nilai_promo::numeric(17)||'"'
											 when b.jenis='BARANG' then 'SETIAP PEMBELIAN '||b.qty_promo::integer||' PCS '||a.nama_item::varchar(14)||'.., FREE '||b.qty_item_promo::integer||' PCS '||b.nama_item_promo::varchar(14)||'..'
											 when b.jenis is null then '-' end)::varchar(255) as keterangan_promo,
									   a.kd_item, a.nama_item, a.rasio::integer, a.hrg_beli::numeric(17),
									   a.hrg_jual::numeric(17) as hrg_jual_retail, a.hrg_jual_sm_grosir::numeric(17), a.hrg_jual_grosir::numeric(17), a.hrg_jual_grosir_besar::numeric(17),
									   a.qty_min_retail::integer, a.qty_min_sm_grosir::integer, a.qty_min_grosir::integer, a.qty_min_grosir_besar::integer,
									   a.qty_max_retail::integer, a.qty_max_sm_grosir::integer, a.qty_max_grosir::integer, a.qty_max_grosir_besar::integer
								from master.item a
								left join master.item_promo b on b.kd_item=a.kd_item;
- Ins TransMaster Mobile:=	select NO.* from transaksi.nota_online NO (id_trans='206');	
- Ins TransDetail Mobile:=	select NOD.* from transaksi.nota_online_detail NOD where NOD.id_nota=NO.id_nota (id_trans='206');

*/