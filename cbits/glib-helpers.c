#include <glib.h>
#include <glib-cbits.h>

guint g_ptr_array_size(GPtrArray *arr){
  return arr->len;
}

gpointer *g_ptr_array_pdata(GPtrArray *arr){
  return arr->pdata;
}
