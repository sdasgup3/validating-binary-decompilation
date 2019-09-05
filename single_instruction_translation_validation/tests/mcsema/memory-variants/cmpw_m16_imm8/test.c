void leaf() {
  __asm__("cmpw $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}