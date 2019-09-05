void leaf() {
  __asm__("shlb $0x1, %ah");
  }

void main() {
  leaf();
}