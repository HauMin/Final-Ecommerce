// Hàm xử lý khi thẻ select thay đổi giá trị được chọn
// obj là tham số truyền vào và cũng chính là thẻ select
function categoryChanged(obj)
{
      var id = document.getElementById('image_product_product_id');
      var val = obj.value;
      id.value = val;
}
 
