.class public final enum Lcom/facebook/share/model/AppInviteContent$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/model/AppInviteContent$a$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/share/model/AppInviteContent$a$a;

.field public static final enum b:Lcom/facebook/share/model/AppInviteContent$a$a;

.field private static final synthetic d:[Lcom/facebook/share/model/AppInviteContent$a$a;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$a$a;

    const-string v1, "FACEBOOK"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/share/model/AppInviteContent$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/share/model/AppInviteContent$a$a;->a:Lcom/facebook/share/model/AppInviteContent$a$a;

    .line 175
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$a$a;

    const-string v1, "MESSENGER"

    const-string v2, "messenger"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/share/model/AppInviteContent$a$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/share/model/AppInviteContent$a$a;->b:Lcom/facebook/share/model/AppInviteContent$a$a;

    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/share/model/AppInviteContent$a$a;

    sget-object v1, Lcom/facebook/share/model/AppInviteContent$a$a;->a:Lcom/facebook/share/model/AppInviteContent$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/model/AppInviteContent$a$a;->b:Lcom/facebook/share/model/AppInviteContent$a$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/share/model/AppInviteContent$a$a;->d:[Lcom/facebook/share/model/AppInviteContent$a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 180
    iput-object p3, p0, Lcom/facebook/share/model/AppInviteContent$a$a;->c:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$a$a;
    .locals 1

    .prologue
    .line 172
    const-class v0, Lcom/facebook/share/model/AppInviteContent$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/AppInviteContent$a$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/model/AppInviteContent$a$a;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/facebook/share/model/AppInviteContent$a$a;->d:[Lcom/facebook/share/model/AppInviteContent$a$a;

    invoke-virtual {v0}, [Lcom/facebook/share/model/AppInviteContent$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/AppInviteContent$a$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$a$a;->c:Ljava/lang/String;

    return-object v0
.end method
