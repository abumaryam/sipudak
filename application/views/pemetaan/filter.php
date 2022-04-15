<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-2">
                <!--begin::Page Title-->
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5"><?= $title; ?></h5>
                <!--end::Page Title-->
                <!--begin::Actions-->

                <!--end::Actions-->
            </div>
            <!--end::Info-->
            <!--begin::Toolbar-->
            <!-- bisa ditambah button disini -->
            <!--end::Toolbar-->
        </div>
    </div>
    <!--end::Subheader-->
    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <!--begin::Card-->
                    <div class="card card-custom gutter-b example example-compact">
                        <div class="card-header">
                            <h3 class="card-title">Tambah Pelaporan</h3>

                        </div>
                
                        <!--begin::Form-->
                        <!-- <form method="post" action="<?= base_url('pemetaan/hitung') ?>" >
                    
                            <div class="card-body">
                                <div class="form-group row">
                                <input type="hidden" class="form-control" placeholder="" name="id_user"
                                    value="<?= $user['id_user'] ?>">
                                <div class="col-lg-6">
                                    <label>Kecamatan:</label>
                                    <select class="form-control" name="kecamatan"
                                        id="cform-control form-control-solid form-control-lg">
                                        <?php foreach ($kecamatan as $kcm) : ?>
        
                                        <?php if ($kcm['id_kecamatan'] == $this->input->post('kecamatan')) : ?>
                                            <option value="<?= $kcm['id_kecamatan'] ?>" selected><?= $kcm['nama_kecamatan'] ?></option>
                                        <?php else : ?>
                                            <option value="<?= $kcm['id_kecamatan'] ?>"><?= $kcm['nama_kecamatan']  ?></option>
                                        <?php endif; ?>

                                        <?php endforeach; ?>
                                    </select>
                                    <?= form_error('kecamatan', '<div class="fv-plugins-message-container"><div class="fv-help-block">', '</div></div>') ?>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-6">
                                </div>
                                <div class="col-lg-6 text-lg-right">
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </div>

                        </form> -->
                    
                
                        <form method="post" action="<?= base_url('pemetaan/filter_hitung') ?>" >

                        <input type="hidden" class="form-control" placeholder="" name="id_kec" value="<?= $this->input->post('kecamatan'); ?>">
                            
                            <div class="form-group row">
                                <div class="col-lg-6">
                                    <label>Titik Hitung Kecamatan:</label>
                                    <select class="form-control" name="ttk_kecamatan"
                                        id="cform-control form-control-solid form-control-lg">
                                        <?php foreach ($titik as $ttk) : ?>
                                        <option value="<?= $ttk['id_kecamatan'] ?>"><?= $ttk['nama_kecamatan']  ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                    <?= form_error('ttk_kecamatan', '<div class="fv-plugins-message-container"><div class="fv-help-block">', '</div></div>') ?>
                                </div>
                        

                                <div class="col-lg-6">
                                <label>Tahun:</label>
                                <select class="form-control" name="tahun" id="cform-control form-control-solid form-control-lg">
                                    <option selected disabled>Tahun</option>
                                        <?php for ($y = date('Y'); $y >= 2000; $y--) : ?>
                                            <?php if ($y == $this->input->post('tahun')) : ?>
                                                <option value="<?= $y; ?>" selected><?= $y; ?></option>
                                            <?php else : ?>
                                                <option value="<?= $y; ?>"><?= $y; ?></option>
                                            <?php endif; ?>
                                        <?php endfor; ?>
                                    </select>
                                    <?= form_error('tahun', '<div class="fv-plugins-message-container"><div class="fv-help-block">', '</div></div>') ?>
                                    <!-- <span class="form-text text-muted">Please enter your contact number</span> -->
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                </div>
                                <div class="col-lg-6 text-lg-right">
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </div>
                        </form>

                    <?php if ($this->input->post('ttk_kecamatan')) : ?>
                            <div class="form-group row">
                                <div class="col-lg-6">
                                    <label>Jarak:</label>
                                    <input type="text" class="form-control" name="jarak"
                                        value="<?= $jarak['Jarak']; ?>" placeholder="" />
                                    <?= form_error('jarak', '<div class="fv-plugins-message-container"><div class="fv-help-block">', '</div></div>') ?>
                                    <!-- <span class="form-text text-muted">Please enter your contact number</span> -->
                                </div>

                                <div class="col-lg-6">
                                    <label>Kasus:</label>
                                    <input type="text" class="form-control" name="kasus"
                                        value="<?= $kasus['j_kasus']; ?>" placeholder="" />
                                    <?= form_error('kasus', '<div class="fv-plugins-message-container"><div class="fv-help-block">', '</div></div>') ?>
                                    <!-- <span class="form-text text-muted">Please enter your address</span> -->
                                </div>
                            </div>
                            
                            
                    </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-lg-6">
                                </div>
                                <div class="col-lg-6 text-lg-right">
                                    <a href="<?= site_url('pelaporan') ?>" class="btn btn-secondary mr-2">Kembali</a>
                                    <button type="submit" class="btn btn-primary">Simpan</button>
                                </div>
                            </div>
                        </div>
                    
                <?php else : ?>
                                    <div class="mt-4">
                                        <a href="<?= site_url('kasus_dbd'); ?>" type="button" class="btn btn-danger waves-effect waves-light"><i class="mdi mdi-reply"></i> Kembali</a>
                                    </div>
                <?php endif; ?>
                    </div>
                    <!--end::Card-->
                </div>
            </div>
        </div>
        <!--end::Container-->
    </div>
    <!--end::Entry-->
</div>