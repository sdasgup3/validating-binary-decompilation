void leaf() {
  __asm__("shlq $0x1, -4(%rbp)");
  }

void main() {
  leaf();
}