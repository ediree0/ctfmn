.class public final Lmn/haruulzangi/composeyourflag/utils/CryptoKt;
.super Ljava/lang/Object;
.source "Crypto.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "asSecretKey",
        "Ljavax/crypto/SecretKey;",
        "",
        "algorithm",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asSecretKey([BLjava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public static synthetic asSecretKey$default([BLjava/lang/String;ILjava/lang/Object;)Ljavax/crypto/SecretKey;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "AES"

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lmn/haruulzangi/composeyourflag/utils/CryptoKt;->asSecretKey([BLjava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method
