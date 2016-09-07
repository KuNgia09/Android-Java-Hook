.class public Landroid/support/v4/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/BitmapCompat$KitKatBitmapCompatImpl;,
        Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;,
        Landroid/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;,
        Landroid/support/v4/graphics/BitmapCompat$BaseBitmapImpl;,
        Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 82
    .local v0, "version":I
    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    .line 83
    new-instance v1, Landroid/support/v4/graphics/BitmapCompat$KitKatBitmapCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/BitmapCompat$KitKatBitmapCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    .line 91
    :goto_d
    return-void

    .line 84
    :cond_e
    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    .line 85
    new-instance v1, Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/BitmapCompat$JbMr2BitmapCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    goto :goto_d

    .line 86
    :cond_1a
    const/16 v1, 0xc

    if-lt v0, v1, :cond_26

    .line 87
    new-instance v1, Landroid/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/BitmapCompat$HcMr1BitmapCompatImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    goto :goto_d

    .line 89
    :cond_26
    new-instance v1, Landroid/support/v4/graphics/BitmapCompat$BaseBitmapImpl;

    invoke-direct {v1}, Landroid/support/v4/graphics/BitmapCompat$BaseBitmapImpl;-><init>()V

    sput-object v1, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "hasMipMap"    # Z

    .prologue
    .line 98
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/BitmapCompat$BitmapImpl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    .line 99
    return-void
.end method
