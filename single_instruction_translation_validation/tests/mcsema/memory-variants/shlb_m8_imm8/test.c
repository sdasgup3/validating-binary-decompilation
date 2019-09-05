void leaf() {
  __asm__("shlb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}