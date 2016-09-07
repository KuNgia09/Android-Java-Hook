.class Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;
.super Ljava/lang/Object;
.source "DrawableCompatKitKat.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
    .registers 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v0

    return v0
.end method

.method public static setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
    .registers 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mirrored"    # Z

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 29
    return-void
.end method

.method public static wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 36
    instance-of v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;

    if-nez v0, :cond_a

    .line 37
    new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;

    invoke-direct {v0, p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/graphics/drawable/Drawable;)V

    move-object p0, v0

    .line 39
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_a
    return-object p0
.end method
