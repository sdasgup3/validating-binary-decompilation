void leaf() {
  __asm__("vcvttss2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}