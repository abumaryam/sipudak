<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-2">
                <!--begin::Page Title-->
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Halaman Pemetaan</h5>
                <!--end::Page Title-->
                <!--begin::Actions-->

                <!--end::Actions-->
            </div>
            <!--end::Info-->
            <!--begin::Toolbar-->
            <!-- <a href="<?= site_url('pelaporan') ?>" class="btn btn-sm btn-secondary" data-container="body"
                data-toggle="popover" data-placement="left" data-content="Kembali">Kembali
            </a> -->
            <!--end::Toolbar-->
        </div>
    </div>
    <!--end::Subheader-->
    <!--begin::Entry-->
    <div class="d-flex flex-column-fluid">
        <!--begin::Container-->
        <div class="container">
            <!--begin::Card-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card card-custom gutter-b example example-compact">
                        <div class="card card-custom gutter-b">
                            <div class="card-header">
                                <div class="card-title">
                                    <h3 class="card-label">
                                        Peta Sebaran Jumlah Kasus Kekerasan Menurut Kabupaten
                                    </h3>
                                </div>
                                <form action="" method="GET">
                                    <div class="mt-6">
                                        <div class="input-group mt-3">
                                            <select class="form-select" name="cari" id="cari">
                                                <option selected disabled>--Pilih Tahun--</option>
                                                <?php for ($y = date('Y'); $y >= 2010; $y--) : ?>
                                                    <?php if ($y == $this->input->get('cari')) : ?>
                                                        <option value="<?= $y; ?>" selected><?= $y; ?></option>
                                                    <?php else : ?>
                                                        <option value="<?= $y; ?>"><?= $y; ?></option>
                                                    <?php endif; ?>
                                                <?php endfor; ?>
                                            </select>
                                            <button class="btn btn-success ml-2" type="submit">Pilih</button>
                                        </div>
                                    </div>

                                </form>
                            </div>




                            <div class="card-body">
                                <?php if (empty($titikhitung)) : ?>
                                    <div class="alert alert-danger col-sm-12" role="alert">
                                        Data belum tersedia
                                    </div>
                                <?php else : ?>

                                    <div id="map" style="height:420px;"></div>

                                    <!-- <div id="sidebar">
                                 <h1>leaflet-sidebar</h1>
                                </div> -->

                            </div>

                        </div>
                        <div class="card-footer">
                            <div class="card-title">
                                <h5 class="card-label">
                                    Keterangan
                                </h5>
                                <p>Warna Semakin tua, kasus semakin tinggi</p>
                                <span class="map-info-bar"></span>

                                <!-- Metode Peritungan -->

                            </div>
                        </div>
                    <?php endif; ?>
                    </div>
                </div>
            </div>
            <!--end::Card-->


        </div>

    </div>
</div>
</div>
</div>
<!--end::Container-->
</div>


<!--end::Entry-->
</div>

<script type="text/javascript">

</script>