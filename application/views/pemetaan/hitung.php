<div class="content d-flex flex-column flex-column-fluid" id="kt_content">
   <!--begin::Subheader-->
   <div class="subheader py-2 py-lg-4 subheader-solid" id="kt_subheader">
      <div class="container-fluid d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
         <!--begin::Info-->
         <div class="d-flex align-items-center flex-wrap mr-2">
            <!--begin::Page Title-->
            <h5 class="text-dark font-weight-bold mt-2 mb-2 mr-5">Tambah Data Jumlah Kasus</h5>
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
                     <h3 class="card-title">Hitung Jumlah Kasus</h3>

                  </div>

                  <!--begin::Form-->
                  <form method="post" action="">
                     <div>
                        <form method="POST" action="<?= base_url('pemetaan/hitung') ?>">

                           <div class="card-body">
                              <div class="form-group row">
                                 <div class="col-lg-4">
                                    <label>Titik Kecamatan:</label>
                                    <select class="form-control" name="ttk_kecamatan" id="ttk_kecamatan">
                                       <?php foreach ($ttk_kec as $ttk) : ?>

                                          <?php if ($ttk['id_kecamatan'] == $this->input->post('ttk_kecamatan')) : ?>
                                             <option value="<?= $ttk['id_kecamatan'] ?>" selected><?= $ttk['nama_kecamatan'] ?></option>
                                          <?php else : ?>
                                             <option value="<?= $ttk['id_kecamatan'] ?>"><?= $ttk['nama_kecamatan']  ?></option>
                                          <?php endif; ?>
                                       <?php endforeach; ?>
                                    </select>
                                 </div>

                                 <div class="col-lg-4">
                                    <label>Kecamatan:</label>

                                    <select class="form-control" id="id_kecamatan" name="kecamatan">
                                       <option value="">--Pilih Kecamatan--</option>
                                       <?php

                                       ?>

                                    </select>
                                 </div>



                                 <div class="col-lg-4">
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
                                 </div>
                              </div>
                           </div>

                           <div class="row">
                              <div class="col-lg-6">

                              </div>
                              <div class="col-lg-6 text-md-right mb-4 pr-13">
                                 <button type="submit" class="btn btn-primary">Pilih</button>
                              </div>
                           </div>

                        </form>

                        <?php if ($this->input->post('ttk_kecamatan')) : ?>
                           <div class="card-body">
                              <div class="form-group row">
                                 <div class="col-lg-6">
                                    <label>Jarak:</label>
                                    <input type="hidden" class="form-control" name="kecamatan" value="<?= $this->input->post('kecamatan'); ?>" placeholder="" />
                                    <input type="text" class="form-control" name="jarak" value="<?= $jarak['Jarak']; ?>" placeholder="" />

                                 </div>

                                 <div class="col-lg-6">
                                    <label>Kasus:</label>
                                    <input type="text" class="form-control" name="kasus" value="<?= (@$kasus['j_kasus']) ? $kasus['j_kasus'] : 0; ?>" placeholder="" />

                                 </div>


                              </div>
                              <div class="row">
                                 <div class="col-lg-6">

                                 </div>
                                 <div class="col-lg-6 text-lg-right mt-5">
                                    <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                                 </div>
                              </div>
                           <?php endif; ?>
                           </div>

                     </div>
                  </form>


               </div>
               <!--end::Card-->
            </div>
         </div>
      </div>
      <!--end::Container-->
   </div>
   <!--end::Entry-->
</div>