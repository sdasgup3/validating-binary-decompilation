void leaf() {
  __asm__("shlb $0x1, %bl");
  }

void main() {
  leaf();
}