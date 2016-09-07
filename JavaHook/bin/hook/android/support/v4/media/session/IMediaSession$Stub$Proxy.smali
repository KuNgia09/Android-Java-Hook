.class Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 422
    return-void
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;)V
    .registers 9
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 631
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 642
    return-void

    .line 639
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public fastForward()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 825
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 826
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 829
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 832
    return-void

    .line 829
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 830
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 991
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 994
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 995
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 996
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 998
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 1005
    .local v2, "_result":Landroid/os/Bundle;
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    return-object v2

    .line 1001
    .end local v2    # "_result":Landroid/os/Bundle;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/os/Bundle;
    goto :goto_26

    .line 1005
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1006
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getFlags()J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 594
    iget-object v4, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 595
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 596
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result-wide v2

    .line 599
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    return-wide v2

    .line 599
    .end local v2    # "_result":J
    :catchall_23
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    const-string v0, "android.support.v4.media.session.IMediaSession"

    return-object v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 573
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 575
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 582
    .local v2, "_result":Landroid/app/PendingIntent;
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    return-object v2

    .line 578
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/app/PendingIntent;
    goto :goto_26

    .line 582
    .end local v2    # "_result":Landroid/app/PendingIntent;
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 908
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 911
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 912
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 913
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 914
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 915
    sget-object v3, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 922
    .local v2, "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 925
    return-object v2

    .line 918
    .end local v2    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    goto :goto_26

    .line 922
    .end local v2    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 540
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v2

    .line 543
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    return-object v2

    .line 543
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 936
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 937
    sget-object v3, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 944
    .local v2, "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    return-object v2

    .line 940
    .end local v2    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    goto :goto_26

    .line 944
    .end local v2    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getQueue()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 955
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 956
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 957
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 958
    sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_25

    move-result-object v2

    .line 961
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    return-object v2

    .line 961
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :catchall_25
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 973
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 974
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 976
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 983
    .local v2, "_result":Ljava/lang/CharSequence;
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    return-object v2

    .line 979
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_result":Ljava/lang/CharSequence;
    goto :goto_26

    .line 983
    .end local v2    # "_result":Ljava/lang/CharSequence;
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 984
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getRatingType()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1013
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1016
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1017
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    move-result v2

    .line 1022
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1025
    return v2

    .line 1022
    .end local v2    # "_result":I
    :catchall_23
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getTag()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 556
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 557
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v2

    .line 560
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    return-object v2

    .line 560
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_22
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 610
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 611
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2d

    .line 614
    sget-object v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    .line 621
    .local v2, "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :goto_26
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 624
    return-object v2

    .line 617
    .end local v2    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :cond_2d
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    goto :goto_26

    .line 621
    .end local v2    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :catchall_2f
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public isTransportControlEnabled()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 517
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v3, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 523
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_26

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v2, 0x1

    .line 526
    .local v2, "_result":Z
    :cond_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    return v2

    .line 526
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public next()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 804
    return-void

    .line 801
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public pause()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 768
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 770
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    return-void

    .line 773
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public play()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 667
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 668
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    return-void

    .line 672
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 683
    if-eqz p2, :cond_2c

    .line 684
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 690
    :goto_1a
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_31

    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    return-void

    .line 688
    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_1a

    .line 694
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 705
    if-eqz p2, :cond_2c

    .line 706
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 712
    :goto_1a
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 713
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_31

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    return-void

    .line 710
    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_1a

    .line 716
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 723
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 726
    if-eqz p1, :cond_33

    .line 727
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 733
    :goto_17
    if-eqz p2, :cond_40

    .line 734
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 740
    :goto_21
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 741
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_38

    .line 744
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 747
    return-void

    .line 731
    :cond_33
    const/4 v2, 0x0

    :try_start_34
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_17

    .line 744
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 738
    :cond_40
    const/4 v2, 0x0

    :try_start_41
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_38

    goto :goto_21
.end method

.method public previous()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 815
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    return-void

    .line 815
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public rate(Landroid/support/v4/media/RatingCompat;)V
    .registers 7
    .param p1, "rating"    # Landroid/support/v4/media/RatingCompat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 868
    if-eqz p1, :cond_29

    .line 869
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 875
    :goto_17
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2e

    .line 879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    return-void

    .line 873
    :cond_29
    const/4 v2, 0x0

    :try_start_2a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_17

    .line 879
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .registers 7
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 489
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 490
    if-eqz p1, :cond_27

    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 491
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    .line 495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    return-void

    .line 490
    :cond_27
    const/4 v2, 0x0

    goto :goto_13

    .line 495
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public rewind()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 836
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 838
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 840
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 843
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 846
    return-void

    .line 843
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 844
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public seekTo(J)V
    .registers 8
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 854
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 855
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 858
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 861
    return-void

    .line 858
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 434
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 438
    if-eqz p2, :cond_35

    .line 439
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 445
    :goto_1a
    if-eqz p3, :cond_42

    .line 446
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 452
    :goto_24
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 459
    return-void

    .line 443
    :cond_35
    const/4 v2, 0x0

    :try_start_36
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_1a

    .line 456
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 450
    :cond_42
    const/4 v2, 0x0

    :try_start_43
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_3a

    goto :goto_24
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 886
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 890
    if-eqz p2, :cond_2c

    .line 891
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 897
    :goto_1a
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 898
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_31

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 904
    return-void

    .line 895
    :cond_2c
    const/4 v2, 0x0

    :try_start_2d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_1a

    .line 901
    :catchall_31
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "mediaButton"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    if-eqz p1, :cond_30

    .line 468
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 474
    :goto_19
    iget-object v4, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_35

    move-result v4

    if-eqz v4, :cond_3d

    .line 479
    .local v2, "_result":Z
    :goto_29
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    return v2

    .line 472
    .end local v2    # "_result":Z
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_19

    .line 479
    :catchall_35
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3

    :cond_3d
    move v2, v3

    .line 476
    goto :goto_29
.end method

.method public setVolumeTo(IILjava/lang/String;)V
    .registers 9
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 653
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_28

    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 659
    return-void

    .line 656
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public skipToQueueItem(J)V
    .registers 8
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 753
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 755
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_22

    .line 759
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 762
    return-void

    .line 759
    :catchall_22
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public stop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 782
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 784
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1f

    .line 787
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    return-void

    .line 787
    :catchall_1f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 788
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .registers 7
    .param p1, "cb"    # Landroid/support/v4/media/session/IMediaControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 502
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    if-eqz p1, :cond_27

    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_13
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 506
    iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    return-void

    .line 505
    :cond_27
    const/4 v2, 0x0

    goto :goto_13

    .line 510
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
