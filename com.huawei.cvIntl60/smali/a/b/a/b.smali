.class public La/b/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/b/a/b$a;
    }
.end annotation


# static fields
.field private static t:Landroid/content/Context;

.field private static u:La/b/a/c;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/hardware/usb/UsbManager;

.field private h:Landroid/hardware/usb/UsbDevice;

.field private i:Landroid/hardware/usb/UsbInterface;

.field private j:Landroid/hardware/usb/UsbEndpoint;

.field private k:I

.field private l:Landroid/hardware/usb/UsbEndpoint;

.field private m:I

.field private n:Landroid/hardware/usb/UsbDeviceConnection;

.field private o:[B

.field private p:[B

.field private q:Landroid/app/PendingIntent;

.field private r:La/b/a/b$a;

.field private s:I

.field private v:Ljava/util/concurrent/Semaphore;

.field private final w:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput-object v0, La/b/a/b;->u:La/b/a/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v2, p0, La/b/a/b;->a:I

    .line 52
    const/16 v0, 0x109b

    iput v0, p0, La/b/a/b;->b:I

    .line 53
    const/16 v0, 0x12d1

    iput v0, p0, La/b/a/b;->c:I

    .line 54
    const/high16 v0, 0x10000

    iput v0, p0, La/b/a/b;->d:I

    .line 55
    const/16 v0, 0x1f4

    iput v0, p0, La/b/a/b;->e:I

    .line 56
    const/16 v0, 0x1388

    iput v0, p0, La/b/a/b;->f:I

    .line 57
    iput-object v1, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    .line 58
    iput-object v1, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    .line 59
    iput-object v1, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    .line 60
    iput-object v1, p0, La/b/a/b;->j:Landroid/hardware/usb/UsbEndpoint;

    .line 61
    iput v2, p0, La/b/a/b;->k:I

    .line 62
    iput-object v1, p0, La/b/a/b;->l:Landroid/hardware/usb/UsbEndpoint;

    .line 63
    iput v2, p0, La/b/a/b;->m:I

    .line 64
    iput-object v1, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    .line 65
    iput-object v1, p0, La/b/a/b;->o:[B

    .line 66
    iput-object v1, p0, La/b/a/b;->p:[B

    .line 67
    iput-object v1, p0, La/b/a/b;->q:Landroid/app/PendingIntent;

    .line 68
    iput-object v1, p0, La/b/a/b;->r:La/b/a/b$a;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, La/b/a/b;->s:I

    .line 73
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, La/b/a/b;->v:Ljava/util/concurrent/Semaphore;

    .line 80
    new-instance v0, La/b/a/b$1;

    invoke-direct {v0, p0}, La/b/a/b$1;-><init>(La/b/a/b;)V

    iput-object v0, p0, La/b/a/b;->w:Landroid/content/BroadcastReceiver;

    .line 132
    sput-object p1, La/b/a/b;->t:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(La/b/a/b;I)I
    .locals 0

    .prologue
    .line 20
    iput p1, p0, La/b/a/b;->a:I

    return p1
.end method

.method private a(Landroid/hardware/usb/UsbEndpoint;[BII)I
    .locals 3

    .prologue
    const/4 v0, -0x3

    .line 998
    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v1

    if-nez v1, :cond_0

    .line 999
    const-string v1, "SCSI_HOST_STATUS_NOT_INITIALIZED, cancel send bulk data"

    const/4 v2, 0x1

    invoke-static {v1, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 1006
    :goto_0
    return v0

    .line 1002
    :cond_0
    iget-object v1, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v1, :cond_1

    .line 1003
    const-string v1, "targetConnection = null, cancel send bulk data"

    const/4 v2, 0x0

    invoke-static {v1, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 1006
    :cond_1
    iget-object v0, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(La/b/a/b;)La/b/a/b$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, La/b/a/b;->r:La/b/a/b$a;

    return-object v0
.end method

.method private a(Landroid/hardware/usb/UsbDevice;)V
    .locals 2

    .prologue
    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  DeviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  ProductID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  VendorID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  DeviceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  DeviceSubClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  DeviceProtocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  Interface Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 944
    const/4 v1, 0x3

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 945
    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0, p1}, La/b/a/b;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private a([BII)Z
    .locals 6

    .prologue
    const/16 v5, 0x55

    const/16 v4, 0x42

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x53

    .line 979
    const/16 v2, 0xd

    if-lt p2, v2, :cond_4

    .line 980
    if-nez p3, :cond_2

    .line 981
    add-int/lit8 v2, p2, -0xd

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_1

    add-int/lit8 v2, p2, -0xc

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, p2, -0xb

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v2, p2, -0xa

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_1

    .line 988
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 981
    goto :goto_0

    .line 984
    :cond_2
    add-int/lit8 v2, p2, -0xd

    aget-byte v2, p1, v2

    if-ne v2, v5, :cond_3

    add-int/lit8 v2, p2, -0xc

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, p2, -0xb

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_3

    add-int/lit8 v2, p2, -0xa

    aget-byte v2, p1, v2

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, p2, -0x9

    aget-byte v2, p1, v2

    shr-int/lit8 v3, p3, 0x18

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, p2, -0x8

    aget-byte v2, p1, v2

    shr-int/lit8 v3, p3, 0x10

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, p2, -0x7

    aget-byte v2, p1, v2

    shr-int/lit8 v3, p3, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, p2, -0x6

    aget-byte v2, p1, v2

    int-to-byte v3, p3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 988
    goto :goto_0
.end method

.method private b([BI)Ljava/lang/String;
    .locals 4

    .prologue
    .line 949
    const-string v2, ""

    .line 950
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 953
    rem-int/lit8 v2, v1, 0x10

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 954
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    .line 957
    :cond_1
    return-object v2
.end method

.method static synthetic b(La/b/a/b;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, La/b/a/b;->q()V

    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 893
    const-string v0, "SCSIHost"

    invoke-static {v0, p0, p1}, La/b/a/d;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 894
    return-void
.end method

.method static synthetic c(La/b/a/b;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, La/b/a/b;->a:I

    return v0
.end method

.method private c([BI)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 962
    packed-switch p2, :pswitch_data_0

    .line 966
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid byecount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 967
    :goto_0
    return v0

    .line 963
    :pswitch_1
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    .line 964
    :pswitch_2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    goto :goto_0

    .line 962
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private d([BI)Z
    .locals 1

    .prologue
    .line 993
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, La/b/a/b;->a([BII)Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 899
    :try_start_0
    iget-object v0, p0, La/b/a/b;->v:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, La/b/a/b;->v:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 908
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 912
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 913
    iput-object v0, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    .line 914
    iput-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    .line 915
    iput-object v0, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    .line 916
    iput-object v0, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    .line 917
    iput-object v0, p0, La/b/a/b;->j:Landroid/hardware/usb/UsbEndpoint;

    .line 918
    iput-object v0, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    .line 919
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 920
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 924
    sget-object v0, La/b/a/b;->t:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.example.USB_PERMISSION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, La/b/a/b;->q:Landroid/app/PendingIntent;

    .line 925
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 927
    const-string v1, "com.android.example.USB_PERMISSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 928
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 929
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 931
    sget-object v1, La/b/a/b;->t:Landroid/content/Context;

    iget-object v2, p0, La/b/a/b;->w:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 932
    return-void
.end method

.method private s()I
    .locals 1

    .prologue
    .line 973
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 974
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, La/b/a/b;->o:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public a()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, La/b/a/b;->a:I

    return v0
.end method

.method public a([B)I
    .locals 2

    .prologue
    .line 563
    const/4 v0, 0x0

    const/16 v1, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, La/b/a/b;->a([BZI)I

    move-result v0

    return v0
.end method

.method public a([BB)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 694
    new-array v0, v2, [B

    .line 695
    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 696
    invoke-virtual {p0, p1, v0, v2}, La/b/a/b;->a([B[BI)I

    move-result v0

    return v0
.end method

.method public a([BI)I
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, La/b/a/b;->a([BZI)I

    move-result v0

    return v0
.end method

.method public a([BZ)I
    .locals 1

    .prologue
    .line 573
    const/16 v0, 0x7d0

    invoke-virtual {p0, p1, p2, v0}, La/b/a/b;->a([BZI)I

    move-result v0

    return v0
.end method

.method public a([BZI)I
    .locals 9

    .prologue
    .line 579
    const/16 v0, 0x4000

    new-array v4, v0, [B

    .line 581
    const/4 v2, 0x0

    .line 583
    const/4 v3, -0x1

    .line 588
    if-eqz p2, :cond_0

    .line 589
    iget-object v0, p0, La/b/a/b;->p:[B

    .line 590
    const/16 v1, 0x40

    .line 597
    :goto_0
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 599
    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 600
    const-string v0, "Connected first"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 601
    invoke-direct {p0}, La/b/a/b;->p()V

    move v0, v3

    .line 681
    :goto_1
    return v0

    .line 593
    :cond_0
    iget-object v0, p0, La/b/a/b;->o:[B

    .line 594
    iget v1, p0, La/b/a/b;->d:I

    goto :goto_0

    .line 606
    :cond_1
    invoke-direct {p0}, La/b/a/b;->s()I

    move-result v5

    .line 607
    new-instance v6, La/b/a/a;

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    const/16 v8, -0x80

    invoke-direct {v6, v7, v8, v5}, La/b/a/a;-><init>(IBI)V

    .line 608
    invoke-virtual {v6, p1}, La/b/a/a;->a([B)V

    .line 609
    invoke-virtual {v6}, La/b/a/a;->a()[B

    move-result-object v6

    .line 611
    iget v7, p0, La/b/a/b;->s:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 612
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DBG] Read Cmd:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x1f

    invoke-direct {p0, v6, v8}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, La/b/a/b;->s:I

    invoke-static {v7, v8}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 615
    :cond_2
    iget-object v7, p0, La/b/a/b;->l:Landroid/hardware/usb/UsbEndpoint;

    const/16 v8, 0x1f

    invoke-direct {p0, v7, v6, v8, p3}, La/b/a/b;->a(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v6

    .line 617
    if-gez v6, :cond_4

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read cmd send Fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 622
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 623
    const/4 v0, -0x3

    goto :goto_1

    .line 671
    :cond_3
    const/4 v7, 0x0

    invoke-static {v4, v7, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 672
    add-int/2addr v2, v6

    .line 628
    :cond_4
    iget-object v6, p0, La/b/a/b;->j:Landroid/hardware/usb/UsbEndpoint;

    const/16 v7, 0x4000

    invoke-direct {p0, v6, v4, v7, p3}, La/b/a/b;->a(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v6

    .line 629
    if-gez v6, :cond_7

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recv read data fail: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Cmd: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {p0, p1, v3}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 631
    const/16 v1, 0xa

    if-lt v2, v1, :cond_5

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump first 10 byte: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-direct {p0, v0, v3}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 634
    :cond_5
    const/16 v1, 0x17

    if-lt v2, v1, :cond_6

    .line 635
    const/16 v1, 0xd

    new-array v1, v1, [B

    .line 636
    add-int/lit8 v2, v2, -0xd

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump last 13 byte:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-direct {p0, v1, v2}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 642
    :cond_6
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 643
    const/4 v0, -0x3

    goto/16 :goto_1

    .line 645
    :cond_7
    if-nez v6, :cond_9

    .line 646
    const-string v0, "Recv empty read data"

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    move v0, v3

    .line 677
    :goto_2
    if-nez p2, :cond_8

    .line 678
    sget-object v1, La/b/a/b;->u:La/b/a/c;

    invoke-virtual {v1}, La/b/a/c;->b()V

    .line 680
    :cond_8
    invoke-direct {p0}, La/b/a/b;->p()V

    goto/16 :goto_1

    .line 651
    :cond_9
    invoke-direct {p0, v4, v6, v5}, La/b/a/b;->a([BII)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 652
    iget v1, p0, La/b/a/b;->s:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG] Recv read CSW:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, v6}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, La/b/a/b;->s:I

    invoke-static {v1, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 655
    :cond_a
    const/16 v1, 0xd

    if-le v6, v1, :cond_b

    .line 656
    const/4 v1, 0x0

    add-int/lit8 v3, v6, -0xd

    invoke-static {v4, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    add-int/lit8 v0, v6, -0xd

    add-int/2addr v2, v0

    :cond_b
    move v0, v2

    .line 660
    goto :goto_2

    .line 663
    :cond_c
    iget v7, p0, La/b/a/b;->s:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d

    .line 664
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DBG] Recv read data ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v4, v6}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, La/b/a/b;->s:I

    invoke-static {v7, v8}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 666
    :cond_d
    add-int v7, v2, v6

    if-le v7, v1, :cond_3

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Over data buffer! Already recv size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recv data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 668
    invoke-direct {p0, v4, v6}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    move v0, v3

    .line 669
    goto/16 :goto_2
.end method

.method public a([B[BI)I
    .locals 11

    .prologue
    const/4 v4, -0x3

    const/16 v10, 0x7d0

    const/4 v9, 0x3

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 711
    iget v0, p0, La/b/a/b;->k:I

    new-array v6, v0, [B

    .line 718
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 720
    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 721
    const-string v0, "Connected first"

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 722
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 803
    :goto_0
    return v3

    .line 726
    :cond_0
    const/high16 v0, 0x10000

    if-le p3, v0, :cond_1

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Over buffer. Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 728
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0

    .line 733
    :cond_1
    new-instance v0, La/b/a/a;

    invoke-static {p3}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-direct {v0, v1, v2}, La/b/a/a;-><init>(IB)V

    .line 734
    invoke-virtual {v0, p1}, La/b/a/a;->a([B)V

    .line 735
    invoke-virtual {v0}, La/b/a/a;->a()[B

    move-result-object v0

    .line 737
    iget v1, p0, La/b/a/b;->s:I

    if-eq v1, v3, :cond_2

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DBG] Write Cmd:\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x1f

    invoke-direct {p0, v0, v5}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, La/b/a/b;->s:I

    invoke-static {v1, v5}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 741
    :cond_2
    iget-object v1, p0, La/b/a/b;->l:Landroid/hardware/usb/UsbEndpoint;

    const/16 v5, 0x1f

    invoke-direct {p0, v1, v0, v5, v10}, La/b/a/b;->a(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    .line 743
    if-gez v0, :cond_b

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write cmd send Fail: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, v9}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 748
    invoke-direct {p0}, La/b/a/b;->p()V

    move v3, v4

    .line 749
    goto/16 :goto_0

    .line 779
    :cond_3
    iget v7, p0, La/b/a/b;->s:I

    if-eq v7, v3, :cond_4

    .line 780
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DBG] Send write data ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "):\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v6, v0}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, La/b/a/b;->s:I

    invoke-static {v7, v8}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 782
    :cond_4
    add-int/2addr v5, v0

    .line 783
    sub-int/2addr v1, v0

    .line 753
    :goto_1
    if-lez v1, :cond_7

    .line 754
    iget v0, p0, La/b/a/b;->m:I

    if-le v1, v0, :cond_5

    .line 755
    iget v0, p0, La/b/a/b;->m:I

    invoke-static {p2, v5, v6, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    iget v0, p0, La/b/a/b;->m:I

    .line 763
    :goto_2
    iget-object v7, p0, La/b/a/b;->l:Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {p0, v7, v6, v0, v10}, La/b/a/b;->a(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v7

    .line 765
    if-gez v7, :cond_6

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send write data fail: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " TargetSize: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, v9}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 770
    invoke-direct {p0}, La/b/a/b;->p()V

    move v3, v4

    .line 771
    goto/16 :goto_0

    .line 759
    :cond_5
    invoke-static {p2, v5, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    .line 760
    goto :goto_2

    .line 773
    :cond_6
    if-eq v7, v0, :cond_3

    .line 774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send write data fail, recvDataSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " TargetSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, v9}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 775
    invoke-direct {p0}, La/b/a/b;->p()V

    goto/16 :goto_0

    .line 785
    :cond_7
    iget v0, p0, La/b/a/b;->s:I

    if-eq v0, v3, :cond_8

    .line 786
    const-string v0, "[DBG] Write data done\n"

    iget v1, p0, La/b/a/b;->s:I

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 790
    :cond_8
    iget-object v0, p0, La/b/a/b;->j:Landroid/hardware/usb/UsbEndpoint;

    iget v1, p0, La/b/a/b;->k:I

    invoke-direct {p0, v0, v6, v1, v10}, La/b/a/b;->a(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v0

    .line 791
    invoke-direct {p0, v6, v0}, La/b/a/b;->d([BI)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 792
    iget v1, p0, La/b/a/b;->s:I

    if-eq v1, v3, :cond_9

    .line 793
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DBG] Recv write CSW:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v6, v0}, La/b/a/b;->b([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, La/b/a/b;->s:I

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    :cond_9
    move v0, v2

    .line 801
    :goto_3
    sget-object v1, La/b/a/b;->u:La/b/a/c;

    invoke-virtual {v1}, La/b/a/c;->b()V

    .line 802
    invoke-direct {p0}, La/b/a/b;->p()V

    move v3, v0

    .line 803
    goto/16 :goto_0

    .line 798
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown recv data, recvDataSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    move v0, v3

    goto :goto_3

    :cond_b
    move v1, p3

    move v5, v2

    goto/16 :goto_1
.end method

.method public a(La/b/a/b$a;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, La/b/a/b;->r:La/b/a/b$a;

    .line 359
    return-void
.end method

.method public a(II)[B
    .locals 3

    .prologue
    .line 816
    new-array v0, p2, [B

    .line 817
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 818
    iget-object v1, p0, La/b/a/b;->o:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 819
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 820
    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, La/b/a/b;->d:I

    return v0
.end method

.method public b(II)I
    .locals 1

    .prologue
    .line 845
    invoke-virtual {p0, p1, p2}, La/b/a/b;->a(II)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, La/b/a/b;->c([BI)I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 226
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    iget v1, p0, La/b/a/b;->e:I

    iget v2, p0, La/b/a/b;->f:I

    invoke-virtual {v0, v1, v2}, La/b/a/c;->a(II)V

    .line 229
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 236
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    invoke-virtual {v0}, La/b/a/c;->a()V

    .line 239
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 246
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    invoke-virtual {v0}, La/b/a/c;->c()V

    .line 248
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    invoke-virtual {v0}, La/b/a/c;->f()V

    .line 250
    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 257
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    if-eqz v0, :cond_0

    .line 258
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    invoke-virtual {v0}, La/b/a/c;->d()V

    .line 260
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 267
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, La/b/a/b;->u:La/b/a/c;

    invoke-virtual {v0}, La/b/a/c;->e()V

    .line 270
    :cond_0
    return-void
.end method

.method public h()I
    .locals 11

    .prologue
    const/16 v10, 0x4000

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 312
    iget-object v0, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_1

    .line 313
    const-string v0, "No target device"

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    move v1, v5

    .line 348
    :cond_0
    :goto_0
    return v1

    .line 317
    :cond_1
    iget-object v0, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    if-eqz v0, :cond_2

    .line 318
    const-string v0, "Replace original interface"

    invoke-static {v0, v6}, La/b/a/b;->b(Ljava/lang/String;I)V

    :cond_2
    move v0, v1

    .line 320
    :goto_1
    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    move v2, v1

    move v3, v1

    move v4, v1

    .line 323
    :goto_2
    iget-object v7, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 324
    iget-object v7, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v7

    .line 325
    invoke-virtual {v7}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 326
    invoke-virtual {v7}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v8

    const/16 v9, 0x80

    if-ne v8, v9, :cond_5

    .line 328
    iput-object v7, p0, La/b/a/b;->j:Landroid/hardware/usb/UsbEndpoint;

    .line 329
    iput v10, p0, La/b/a/b;->k:I

    move v4, v6

    .line 337
    :cond_3
    :goto_3
    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 338
    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    iput-object v2, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    .line 320
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_5
    invoke-virtual {v7}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v8

    if-nez v8, :cond_3

    .line 333
    iput-object v7, p0, La/b/a/b;->l:Landroid/hardware/usb/UsbEndpoint;

    .line 334
    iput v10, p0, La/b/a/b;->m:I

    move v3, v6

    goto :goto_3

    .line 323
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 344
    :cond_7
    iget-object v0, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find appropriate interface. Device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " PID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " VID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    move v1, v5

    .line 346
    goto/16 :goto_0
.end method

.method public i()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 371
    iget-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    .line 372
    sget-object v0, La/b/a/b;->t:Landroid/content/Context;

    const-string v3, "usb"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    .line 373
    iget-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    .line 374
    const-string v0, "Unable to initialize USB manager"

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    move v0, v1

    .line 404
    :goto_0
    return v0

    .line 380
    :cond_0
    iget-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 383
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 385
    invoke-direct {p0, v0}, La/b/a/b;->a(Landroid/hardware/usb/UsbDevice;)V

    .line 386
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    iget v5, p0, La/b/a/b;->c:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    iget v5, p0, La/b/a/b;->b:I

    if-ne v4, v5, :cond_1

    .line 387
    iput-object v0, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    .line 392
    :cond_2
    iget-object v0, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    if-nez v0, :cond_3

    .line 393
    const-string v0, "No appropriate USB device"

    invoke-static {v0, v2}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    move v0, v1

    .line 395
    goto :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 400
    const-string v0, "No permission"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 401
    const/4 v0, -0x4

    goto :goto_0

    :cond_4
    move v0, v2

    .line 404
    goto :goto_0
.end method

.method public j()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x1

    .line 415
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 417
    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init USB fail, check status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 419
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 447
    :goto_0
    return v0

    .line 423
    :cond_0
    invoke-direct {p0}, La/b/a/b;->r()V

    .line 424
    new-instance v2, La/b/a/c;

    invoke-direct {v2, p0}, La/b/a/c;-><init>(La/b/a/b;)V

    sput-object v2, La/b/a/b;->u:La/b/a/c;

    .line 426
    invoke-virtual {p0}, La/b/a/b;->i()I

    move-result v2

    .line 427
    if-ne v2, v0, :cond_1

    .line 428
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0

    .line 432
    :cond_1
    iget v0, p0, La/b/a/b;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, La/b/a/b;->o:[B

    .line 433
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, La/b/a/b;->p:[B

    .line 434
    const/4 v0, -0x4

    if-ne v2, v0, :cond_2

    .line 435
    const-string v0, "Need to ask for permission"

    invoke-static {v0, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 436
    iput v3, p0, La/b/a/b;->a:I

    .line 437
    iget-object v0, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    iget-object v3, p0, La/b/a/b;->q:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 446
    :goto_1
    invoke-direct {p0}, La/b/a/b;->p()V

    move v0, v1

    .line 447
    goto :goto_0

    .line 440
    :cond_2
    const-string v0, "Already has permission"

    invoke-static {v0, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 441
    iput v4, p0, La/b/a/b;->a:I

    .line 442
    iget-object v0, p0, La/b/a/b;->r:La/b/a/b$a;

    invoke-interface {v0, v4, v1}, La/b/a/b$a;->a(II)I

    goto :goto_1
.end method

.method public k()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 459
    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 460
    iget-object v1, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    const-string v1, "deinit fail: could not release interface"

    invoke-static {v1, v0}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 462
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 463
    const/4 v0, -0x1

    .line 473
    :goto_0
    return v0

    .line 465
    :cond_0
    iget-object v1, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 468
    :cond_1
    invoke-virtual {p0}, La/b/a/b;->d()V

    .line 469
    invoke-virtual {p0}, La/b/a/b;->g()V

    .line 470
    iput v0, p0, La/b/a/b;->a:I

    .line 471
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 472
    invoke-direct {p0}, La/b/a/b;->q()V

    goto :goto_0
.end method

.method public l()I
    .locals 5

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 483
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 485
    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 486
    const-string v2, "Should do initialize before create connection"

    invoke-static {v2, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 487
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 512
    :goto_0
    return v0

    .line 491
    :cond_0
    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    if-nez v2, :cond_2

    .line 492
    :cond_1
    const-string v2, "No target device or interface"

    invoke-static {v2, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 493
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0

    .line 497
    :cond_2
    iget-object v2, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    .line 498
    iget-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v2, :cond_3

    .line 499
    const-string v2, "Open device fail"

    invoke-static {v2, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 500
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0

    .line 504
    :cond_3
    iget-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 505
    const-string v2, "Claim interface fail"

    invoke-static {v2, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 506
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0

    .line 510
    :cond_4
    const/4 v0, 0x3

    iput v0, p0, La/b/a/b;->a:I

    .line 511
    invoke-direct {p0}, La/b/a/b;->p()V

    move v0, v1

    .line 512
    goto :goto_0
.end method

.method public m()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 522
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 523
    const-string v2, "Restart USB connection!"

    invoke-static {v2, v4}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 524
    iget-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    if-eqz v2, :cond_0

    iget-object v2, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    if-nez v2, :cond_1

    .line 525
    :cond_0
    const-string v2, "targetConnection or targetDevice or targetInterface is null, restart fail"

    invoke-static {v2, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 526
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 551
    :goto_0
    return v0

    .line 530
    :cond_1
    iget-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 532
    const-wide/16 v2, 0x14

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_1
    iget-object v2, p0, La/b/a/b;->g:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, La/b/a/b;->h:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v2

    iput-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    .line 538
    iget-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v2, :cond_2

    .line 539
    const-string v2, "Open device fail"

    invoke-static {v2, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 540
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0

    .line 533
    :catch_0
    move-exception v2

    .line 534
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 544
    :cond_2
    iget-object v2, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 545
    const-string v2, "Claim interface fail"

    invoke-static {v2, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 546
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0

    .line 550
    :cond_3
    invoke-direct {p0}, La/b/a/b;->p()V

    move v0, v1

    .line 551
    goto :goto_0
.end method

.method public n()I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v3, 0x0

    .line 868
    .line 869
    invoke-direct {p0}, La/b/a/b;->o()V

    .line 871
    invoke-virtual {p0}, La/b/a/b;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 872
    const-string v0, "Connected first. No need to reset"

    invoke-static {v0, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 873
    invoke-direct {p0}, La/b/a/b;->p()V

    .line 886
    :goto_0
    return v3

    .line 876
    :cond_0
    iget-object v0, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    if-nez v0, :cond_1

    .line 877
    const-string v0, "targetConnection = null, cancel reset"

    invoke-static {v0, v3}, La/b/a/b;->b(Ljava/lang/String;I)V

    move v3, v8

    .line 878
    goto :goto_0

    .line 881
    :cond_1
    const-string v0, "Send Reset"

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/b/a/b;->b(Ljava/lang/String;I)V

    .line 882
    iget-object v0, p0, La/b/a/b;->n:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v1, 0x21

    const/16 v2, 0xff

    iget-object v4, p0, La/b/a/b;->i:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v4

    const/4 v5, 0x0

    const/16 v7, 0x7d0

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v0

    if-gez v0, :cond_2

    move v3, v8

    .line 885
    :cond_2
    invoke-direct {p0}, La/b/a/b;->p()V

    goto :goto_0
.end method
