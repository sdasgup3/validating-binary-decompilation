void leaf() {
  __asm__("sbbb %ah, %bl");
  }

void main() {
  leaf();
}