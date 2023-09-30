class ApiConstants {
  static const baseUrl = 'http://103.116.8.159:3000/api/';
  // static const baseUrl = 'http://192.168.11.102:3000/api/';
  static const baseUrlFile = 'http://103.116.8.159:3000/tempCSV/';

  static const login = 'auth/login';
  static const register = 'auth/register';
  static const userDetail = 'user/userDetail';
  static const removeUser = 'user/remove/';
  static const updateUser = 'user/update';

  static const searchByName = 'category/search/';
  static const allFolders = 'api/folder';
  static const allCategory = 'category/all/';
  static const rootCategory = 'category/root/';
  static const categoryWithId = 'category/';
  static const categoryUpdateName = 'category/update/';
  static const categoryInfoWithId = 'category/info/';
  static const insertCategory = 'category';
  static const deleteCategory = 'category/';
  static const exportCsv = 'category/export/csv/';

  static const allItems = 'category/categoryWithItems/';
  static const createItem = 'item/create';
  static const itemInfo = 'item/';
  static const itemEditInfo = 'item/update/';
  static const uploadImage = 'attachment/upload';


  static const allForms = 'form/categoryId/';
  static const createForm = 'form/create';
  static const removeForm = 'form/remove/';
  static const getForm = 'form/';

}
