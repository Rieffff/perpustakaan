<!-- modal add -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  <form role="form">
    <div class="card-body">
      <div class="form-group">
        <label for="ISBN">ISBN</label>
        <input type="number" class="form-control" id="ISBN" placeholder="Enter ISBN" name="ISBN">
      </div>
      <div class="form-group">
        <label for="judul">Judul</label>
        <input type="text" class="form-control" id="judul" placeholder="Enter judul" name="judul">
      </div>
      <div class="form-group">
        <label for="pengarang">Pengarang</label>
        <input type="text" class="form-control" id="pengarang" placeholder="Enter pengarang" name="pengarang">
      </div>
      <div class="form-group">
        <label for="penerbit">penerbit</label>
        <input type="text" class="form-control" id="penerbit" placeholder="Enter penerbit" name="penerbit">
      </div>
      <div class="form-group">
        <label for="thn_terbit">Tahun Terbit</label>
        <input type="number" class="form-control" id="thn_terbit" placeholder="Enter thn_terbit" name="thn_terbit">
      </div>
      <div class="form-group">
        <label for="stok">Stok</label>
        <input type="number" class="form-control" id="stok" placeholder="Enter stok" name="stok">
      </div>
      <div class="form-group">
        <label>Minimal</label>
        <select class="form-control select2bs4" style="width: 100%;" name="id_kategori">
          <option selected="selected">Bahasa</option>
          <option>Alaska</option>
          <option>California</option>
          <option>Delaware</option>
          <option>Tennessee</option>
          <option>Texas</option>
          <option>Washington</option>
        </select>
      </div>
    </div>
    <!-- /.card-body -->


</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form>
      </div>
    </div>
  </div>
</div>
  <!-- endModalAdd -->