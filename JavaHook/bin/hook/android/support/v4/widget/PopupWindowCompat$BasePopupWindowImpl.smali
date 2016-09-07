.class Landroid/support/v4/widget/PopupWindowCompat$BasePopupWindowImpl;
.super Ljava/lang/Object;
.source "PopupWindowCompat.java"

# interfaces
.implements Landroid/support/v4/widget/PopupWindowCompat$PopupWindowImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasePopupWindowImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "overlapAnchor"    # Z

    .prologue
    .line 52
    return-void
.end method

.method public setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .registers 3
    .param p1, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p2, "layoutType"    # I

    .prologue
    .line 62
    return-void
.end method

.method public showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
    .registers 6
    .param p1, "popup"    # Landroid/widget/PopupWindow;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 46
    invoke-virtual {p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 47
    return-void
.end method
