void leaf() {
  __asm__("shlb $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}