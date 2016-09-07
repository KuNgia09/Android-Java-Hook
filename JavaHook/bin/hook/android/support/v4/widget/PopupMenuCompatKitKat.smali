.class Landroid/support/v4/widget/PopupMenuCompatKitKat;
.super Ljava/lang/Object;
.source "PopupMenuCompatKitKat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDragToOpenListener(Ljava/lang/Object;)Landroid/view/View$OnTouchListener;
    .registers 2
    .param p0, "popupMenu"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p0, Landroid/widget/PopupMenu;

    .end local p0    # "popupMenu":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getDragToOpenListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    return-object v0
.end method
