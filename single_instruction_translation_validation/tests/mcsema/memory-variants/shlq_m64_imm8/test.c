void leaf() {
  __asm__("shlq $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}