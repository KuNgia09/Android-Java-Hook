.class Landroid/support/v4/net/ConnectivityManagerCompatHoneycombMR2;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompatHoneycombMR2.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .registers 4
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const/4 v2, 0x1

    .line 37
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 38
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_8

    .line 58
    :goto_7
    :pswitch_7
    return v2

    .line 43
    :cond_8
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 44
    .local v1, "type":I
    packed-switch v1, :pswitch_data_12

    :pswitch_f
    goto :goto_7

    .line 55
    :pswitch_10
    const/4 v2, 0x0

    goto :goto_7

    .line 44
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_7
        :pswitch_10
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_10
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
