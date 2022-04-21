<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
    <!--begin::Subheader-->
    <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
        <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
            <!--begin::Info-->
            <div class="d-flex align-items-center flex-wrap mr-2">
                <!--begin::Page Title-->
                <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Dashboard</h5>
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
            <!--begin::Dashboard-->
            <!--begin::Row-->
            <div class="row">
                <div class="col-xl-3">
                    <!--begin::Stats Widget 29-->
                    <div class="card card-custom bgi-no-repeat card-stretch gutter-b" style="background-position: right top; background-size: 30% auto; background-image: url(assets/media/svg/shapes/abstract-1.svg)">
                        <!--begin::Body-->
                        <div class="card-body">
                            <span class="svg-icon svg-icon-2x svg-icon-primary">
                                <!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Group.svg-->
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <polygon points="0 0 24 0 24 24 0 24"></polygon>
                                        <path d="M18,14 C16.3431458,14 15,12.6568542 15,11 C15,9.34314575 16.3431458,8 18,8 C19.6568542,8 21,9.34314575 21,11 C21,12.6568542 19.6568542,14 18,14 Z M9,11 C6.790861,11 5,9.209139 5,7 C5,4.790861 6.790861,3 9,3 C11.209139,3 13,4.790861 13,7 C13,9.209139 11.209139,11 9,11 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"></path>
                                        <path d="M17.6011961,15.0006174 C21.0077043,15.0378534 23.7891749,16.7601418 23.9984937,20.4 C24.0069246,20.5466056 23.9984937,21 23.4559499,21 L19.6,21 C19.6,18.7490654 18.8562935,16.6718327 17.6011961,15.0006174 Z M0.00065168429,20.1992055 C0.388258525,15.4265159 4.26191235,13 8.98334134,13 C13.7712164,13 17.7048837,15.2931929 17.9979143,20.2 C18.0095879,20.3954741 17.9979143,21 17.2466999,21 C13.541124,21 8.03472472,21 0.727502227,21 C0.476712155,21 -0.0204617505,20.45918 0.00065168429,20.1992055 Z" fill="#000000" fill-rule="nonzero"></path>
                                    </g>
                                </svg>
                                <!--end::Svg Icon-->
                            </span>
                            <span class="card-title font-weight-bolder text-dark-75 font-size-h2 mb-0 mt-6 d-block">$5,209</span>
                            <span class="font-weight-bold text-muted font-size-sm">Jumlah Data User</span>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Stats Widget 29-->
                </div>
                <div class="col-xl-3">
                    <!--begin::Stats Widget 30-->
                    <div class="card card-custom bg-info card-stretch gutter-b">
                        <!--begin::Body-->
                        <div class="card-body">
                            <i class="fab fa-gitter icon-2x text-white"></i>
                            <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block"><?= $korban['korban']; ?></span>
                            <span class="font-weight-bold text-white font-size-sm">Jumlah Korban Kekerasan</span>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Stats Widget 30-->
                </div>
                <div class="col-xl-3">
                    <!--begin::Stats Widget 31-->
                    <div class="card card-custom bg-danger card-stretch gutter-b">
                        <!--begin::Body-->
                        <div class="card-body">
                            <i class="fas fa-male icon-2x text-white"></i>
                            <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 d-block"><?= $laki['korbanLakiLaki']; ?></span>
                            <span class="font-weight-bold text-white font-size-sm">Korban Laki Laki</span>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Stats Widget 31-->
                </div>
                <div class="col-xl-3">
                    <!--begin::Stats Widget 32-->
                    <div class="card card-custom bg-dark card-stretch gutter-b">
                        <!--begin::Body-->
                        <div class="card-body">
                            <i class="fas fa-female icon-2x text-white"></i>
                            <span class="card-title font-weight-bolder text-white font-size-h2 mb-0 mt-6 text-hover-primary d-block"><?= $perempuan['korbanPerempuan']; ?></span>
                            <span class="font-weight-bold text-white font-size-sm">Korban Perempuan</span>
                        </div>
                        <!--end::Body-->
                    </div>
                    <!--end::Stats Widget 32-->
                </div>


            </div>
            <!--end::Row-->
            <!--begin::Row-->
            <!-- <div class="row">
                <div class="col-lg-12">
                    <div class="card card-custom gutter-b example example-compact">
                        <div class="card card-custom gutter-b">
                            <div class="card-header">
                                <div class="card-title">
                                    <h3 class="card-label">
                                        Peta Sebaran Jumlah Kasus Kekerasan Menurut Kabupaten
                                    </h3>
                                </div>
                            </div>
                            <div class="card-body">
                                <div id="map" style="height:400px;"></div>
                            </div>

                        </div>
                        <div class="card-footer">
                            <div class="card-title">
                                <h5 class="card-label">
                                    Keterangan
                                </h5>
                                <p>Warna Semakin tua, kasus semakin tinggi</p>
                                <span class="map-info-bar"></span>

                            </div>
                        </div>
                    </div>
                </div>


            </div> -->
            <!--end::Row-->
            <!--end::Dashboard-->
        </div>

        <!--end::Container-->
    </div>
    <div class="d-flex flex-column-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg">
                    <!--begin::Card-->
                    <div class="card card-custom gutter-b">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">Tingkat Kekerasan Terhadap Perempuan dan Anak Kabupaten Sambas</h3>
                            </div>
                        </div>
                        <div class="card-body" style="position: relative;">
                            <!--begin::Chart-->
                            <canvas id="myChart" style="height:40vh; width:80vw"></canvas>
                            <!--end::Chart-->

                        </div>
                    </div>
                    <!--end::Card-->
                </div>


            </div>

            <div class="row">
                <div class="col-lg">
                    <!--begin::Card-->
                    <div class="card card-custom gutter-b">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">Jenis Kekerasan yang Dialami Korban</h3>
                            </div>
                        </div>
                        <div class="card-body" style="position: relative;">
                            <!--begin::Chart-->
                            <canvas id="youChart" style="height:40vh; width:80vw"></canvas>
                            <!--end::Chart-->

                        </div>
                    </div>
                    <!--end::Card-->
                </div>


            </div>

            <div class="row">
                <div class="col-lg">
                    <!--begin::Card-->
                    <div class="card card-custom gutter-b">
                        <div class="card-header">
                            <div class="card-title">
                                <h3 class="card-label">Korban Berdasarkan Usia</h3>
                            </div>
                        </div>
                        <div class="card-body" style="position: relative;">
                            <!--begin::Chart-->
                            <canvas id="umurChart" style="height:40vh; width:80vw"></canvas>
                            <!--end::Chart-->

                        </div>
                    </div>
                    <!--end::Card-->
                </div>


            </div>



            <canvas id="horizontalBar"></canvas>

        </div>
    </div>


    <!--end::Entry-->
</div>

<script>

</script>