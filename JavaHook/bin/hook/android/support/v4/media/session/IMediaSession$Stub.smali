.class public abstract Landroid/support/v4/media/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"

# interfaces
.implements Landroid/support/v4/media/session/IMediaSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/IMediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x16

.field static final TRANSACTION_getExtras:I = 0x1f

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1b

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x1c

.field static final TRANSACTION_getQueue:I = 0x1d

.field static final TRANSACTION_getQueueTitle:I = 0x1e

.field static final TRANSACTION_getRatingType:I = 0x20

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x14

.field static final TRANSACTION_pause:I = 0x12

.field static final TRANSACTION_play:I = 0xd

.field static final TRANSACTION_playFromMediaId:I = 0xe

.field static final TRANSACTION_playFromSearch:I = 0xf

.field static final TRANSACTION_playFromUri:I = 0x10

.field static final TRANSACTION_previous:I = 0x15

.field static final TRANSACTION_rate:I = 0x19

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_rewind:I = 0x17

.field static final TRANSACTION_seekTo:I = 0x18

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1a

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x11

.field static final TRANSACTION_stop:I = 0x13

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_4

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_3
    return-object v0

    .line 30
    :cond_4
    const-string v1, "android.support.v4.media.session.IMediaSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_13

    .line 32
    check-cast v0, Landroid/support/v4/media/session/IMediaSession;

    goto :goto_3

    .line 34
    :cond_13
    new-instance v0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_2f4

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_9
    return v8

    .line 46
    :sswitch_a
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 51
    :sswitch_10
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3c

    .line 56
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3e

    .line 63
    sget-object v7, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;

    .line 68
    .local v3, "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :goto_35
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 59
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :cond_3c
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_27

    .line 66
    :cond_3e
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    goto :goto_35

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
    :sswitch_40
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_61

    .line 77
    sget-object v9, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 82
    .local v0, "_arg0":Landroid/view/KeyEvent;
    :goto_53
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 83
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_5d

    move v7, v8

    :cond_5d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 80
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v4    # "_result":Z
    :cond_61
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_53

    .line 89
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_63
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 98
    .end local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_77
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 107
    .end local v0    # "_arg0":Landroid/support/v4/media/session/IMediaControllerCallback;
    :sswitch_8c
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isTransportControlEnabled()Z

    move-result v4

    .line 109
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_9b

    move v7, v8

    :cond_9b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 115
    .end local v4    # "_result":Z
    :sswitch_a0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 123
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_b1
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 131
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_c2
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 133
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_d8

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v4, p3, v8}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 139
    :cond_d8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :sswitch_dd
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getFlags()J

    move-result-wide v4

    .line 147
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_9

    .line 153
    .end local v4    # "_result":J
    :sswitch_ee
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;

    move-result-object v4

    .line 155
    .local v4, "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_104

    .line 157
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 161
    :cond_104
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 167
    .end local v4    # "_result":Landroid/support/v4/media/session/ParcelableVolumeInfo;
    :sswitch_109
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 180
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_122
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 193
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_13b
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->play()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 200
    :sswitch_148
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_167

    .line 205
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 210
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_15f
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 208
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_167
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_15f

    .line 216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_169
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_188

    .line 221
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 226
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_180
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 224
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_188
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_180

    .line 232
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_18a
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b3

    .line 235
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 241
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1b5

    .line 242
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 247
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_1ab
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 238
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_1b3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_19d

    .line 245
    :cond_1b5
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_1ab

    .line 253
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_1b7
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 256
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->skipToQueueItem(J)V

    .line 257
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 262
    .end local v0    # "_arg0":J
    :sswitch_1c8
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->pause()V

    .line 264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 269
    :sswitch_1d5
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->stop()V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 276
    :sswitch_1e2
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->next()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 283
    :sswitch_1ef
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->previous()V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 290
    :sswitch_1fc
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->fastForward()V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 297
    :sswitch_209
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rewind()V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 304
    :sswitch_216
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 307
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->seekTo(J)V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 313
    .end local v0    # "_arg0":J
    :sswitch_227
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_242

    .line 316
    sget-object v7, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/RatingCompat;

    .line 321
    .local v0, "_arg0":Landroid/support/v4/media/RatingCompat;
    :goto_23a
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rate(Landroid/support/v4/media/RatingCompat;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 319
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :cond_242
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    goto :goto_23a

    .line 327
    .end local v0    # "_arg0":Landroid/support/v4/media/RatingCompat;
    :sswitch_244
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_263

    .line 332
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 337
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_25b
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 335
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_263
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_25b

    .line 343
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_265
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v4

    .line 345
    .local v4, "_result":Landroid/support/v4/media/MediaMetadataCompat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    if-eqz v4, :cond_27b

    .line 347
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 351
    :cond_27b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 357
    .end local v4    # "_result":Landroid/support/v4/media/MediaMetadataCompat;
    :sswitch_280
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v4

    .line 359
    .local v4, "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v4, :cond_296

    .line 361
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 365
    :cond_296
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 371
    .end local v4    # "_result":Landroid/support/v4/media/session/PlaybackStateCompat;
    :sswitch_29b
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueue()Ljava/util/List;

    move-result-object v6

    .line 373
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 379
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    :sswitch_2ac
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 381
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v4, :cond_2c2

    .line 383
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    invoke-static {v4, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 387
    :cond_2c2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 393
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :sswitch_2c7
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 395
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    if-eqz v4, :cond_2dd

    .line 397
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 401
    :cond_2dd
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 407
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_2e2
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRatingType()I

    move-result v4

    .line 409
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 42
    nop

    :sswitch_data_2f4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_40
        0x3 -> :sswitch_63
        0x4 -> :sswitch_77
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_a0
        0x7 -> :sswitch_b1
        0x8 -> :sswitch_c2
        0x9 -> :sswitch_dd
        0xa -> :sswitch_ee
        0xb -> :sswitch_109
        0xc -> :sswitch_122
        0xd -> :sswitch_13b
        0xe -> :sswitch_148
        0xf -> :sswitch_169
        0x10 -> :sswitch_18a
        0x11 -> :sswitch_1b7
        0x12 -> :sswitch_1c8
        0x13 -> :sswitch_1d5
        0x14 -> :sswitch_1e2
        0x15 -> :sswitch_1ef
        0x16 -> :sswitch_1fc
        0x17 -> :sswitch_209
        0x18 -> :sswitch_216
        0x19 -> :sswitch_227
        0x1a -> :sswitch_244
        0x1b -> :sswitch_265
        0x1c -> :sswitch_280
        0x1d -> :sswitch_29b
        0x1e -> :sswitch_2ac
        0x1f -> :sswitch_2c7
        0x20 -> :sswitch_2e2
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
