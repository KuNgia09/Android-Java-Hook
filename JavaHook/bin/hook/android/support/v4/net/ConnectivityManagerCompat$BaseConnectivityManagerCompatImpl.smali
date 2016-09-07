.class Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"

# interfaces
.implements Landroid/support/v4/net/ConnectivityManagerCompat$ConnectivityManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseConnectivityManagerCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 5
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 41
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_8

    .line 54
    :goto_7
    :pswitch_7
    return v2

    .line 46
    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 47
    .local v1, "type":I
    packed-switch v1, :pswitch_data_12

    goto :goto_7

    .line 51
    :pswitch_10
    const/4 v2, 0x0

    goto :goto_7

    .line 47
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method
