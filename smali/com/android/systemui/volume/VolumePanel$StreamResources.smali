.class final enum Lcom/android/systemui/volume/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/volume/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum FMStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum VideoCallStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const v12, 0x1080a5a

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 323
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0x10404ac

    const v5, 0x1080a52

    const v6, 0x1080a52

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 328
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, 0x10408d2

    const v8, 0x1080a5b

    const v9, 0x1080a5d

    move v5, v11

    move v6, v13

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 340
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const v7, 0x10404ae

    move v5, v13

    move v6, v2

    move v8, v12

    move v9, v12

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 345
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const/4 v6, 0x4

    const v7, 0x10404a9

    const v8, 0x1080a50

    const v9, 0x7f0200db

    move v5, v14

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 350
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const/4 v5, 0x4

    const v7, 0x10408d3

    const v8, 0x1080a6c

    const v9, 0x1080a70

    move v6, v14

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 355
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x5

    const/4 v6, 0x5

    const v7, 0x10408d4

    const v8, 0x1080a54

    const v9, 0x1080a56

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 368
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "MasterStream"

    const/4 v5, 0x6

    const/16 v6, -0x64

    const v7, 0x10404af

    const v8, 0x1080a6c

    const v9, 0x1080a70

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 373
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "RemoteStream"

    const/4 v5, 0x7

    const/16 v6, -0xc8

    const v7, 0x10404af

    const v8, 0x10804e7

    const v9, 0x10804d5

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 379
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "FMStream"

    const/16 v5, 0x8

    const/16 v6, 0xa

    const v7, 0x10408d3

    const v8, 0x1080a6c

    const v9, 0x1080a70

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 384
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "VideoCallStream"

    const/16 v5, 0x9

    const/16 v6, 0xb

    const v7, 0x10404ae

    move v8, v12

    move v9, v12

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 389
    new-instance v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const-string v4, "SystemStream"

    const/16 v5, 0xa

    const v7, 0x10408d5

    const v8, 0x1080a66

    const v9, 0x1080a68

    move v6, v11

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v3, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 322
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v14

    const/4 v1, 0x4

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->FMStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VideoCallStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->SystemStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 1
    .param p3, "streamType"    # I
    .param p4, "descRes"    # I
    .param p5, "iconRes"    # I
    .param p6, "iconMuteRes"    # I
    .param p7, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 403
    iput p3, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 404
    iput p4, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    .line 405
    iput p5, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    .line 406
    iput p6, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    .line 407
    # getter for: Lcom/android/systemui/volume/VolumePanel;->L_AMERICANO:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    iput-boolean p7, p0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 322
    const-class v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/android/systemui/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    return-object v0
.end method
