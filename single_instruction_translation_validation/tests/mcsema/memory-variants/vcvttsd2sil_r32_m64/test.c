void leaf() {
  __asm__("vcvttsd2sil -4(%rbp), %ebx");
  }

void main() {
  leaf();
}