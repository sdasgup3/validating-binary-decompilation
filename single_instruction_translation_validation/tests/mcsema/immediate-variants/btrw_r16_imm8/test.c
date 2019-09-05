void leaf() {
  __asm__("btrw $0x77, %bx");
  }

void main() {
  leaf();
}